import apsw
import os
import pathlib
import json
from typing import Any

assert apsw.sqlitelibversion() == '3.40.1', 'wrong sqlite version, expected 3.40.1'

test_dir = pathlib.Path(__file__).parent.parent / 'tests'


def json_value(value):
    if isinstance(value, bytes):
        return {"blob_hex": value.hex()}
    return value

test_cases = sorted(test_dir.iterdir(), key=lambda x: x.name)
print(f"Found {len(test_cases)} test cases to process.")

failed = 0
for test_case in test_cases:
    print(test_case)
    initial_database_query = (test_case / 'initial_database.sql').read_text()
    user_query = (test_case / 'user_query.sql').read_text()
    validation_query = (test_case / 'validation_query.sql').read_text()
    expected_output: str | None = None
    try:
        expected_output = (test_case / 'expected_output.txt').read_text().strip()
    except FileNotFoundError:
        pass
    
    # set up the initial database based
    input_db = test_case / 'input.db'
    if input_db.exists():
        input_db.unlink()
    connection = apsw.Connection(str(input_db))
    cursor = connection.cursor()
    cursor.execute(initial_database_query).fetchall()
    # connection.execute(initial_database_query).fetchall()
    connection.close()
    
    # modify the database as the candidate solution is supposed to
    output_db = test_case / 'output.db'
    if output_db.exists():
        output_db.unlink()
    os.system(f'cp {input_db} {output_db}')
    connection = apsw.Connection(str(output_db))
    cursor = connection.cursor()
    try:
        cursor.execute(user_query).fetchall()
    except apsw.BindingsError:
        # If a test has a binding, we don't support it.
        # But just pass here, and it'll fail with a mismatch in the output.
        pass
    
    connection.close()
    
    # validate the output database
    connection = apsw.Connection(str(output_db), flags=apsw.SQLITE_OPEN_READONLY)
    output: Any = 'Error'
    try:
        output = [[json_value(value) for value in row] for row in connection.execute(validation_query).fetchall()]
    except (apsw.CorruptError, apsw.SQLError):
        pass
    actual_output = json.dumps(output, ensure_ascii=False, separators=(",", ":"))
    if expected_output != None and expected_output != actual_output:
        failed += 1
        print(f"Test case {test_case.name} being regenerated.")
        print(f"Expected output: {expected_output}")
        print(f"Actual output: {actual_output}")
    elif expected_output == None:
        (test_case / 'expected_output.txt').write_text(actual_output)
print(f"Regenerated {len(test_cases)} test cases, {failed} failed.")