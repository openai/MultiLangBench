import os
import pathlib
import json
import hashlib

# read each dir in ./tests
test_dir = pathlib.Path(__file__).parent.parent / 'tests'


def json_value(value):
    if isinstance(value, bytes):
        return {"blob_hex": value.hex()}
    return value

test_cases = sorted(test_dir.iterdir(), key=lambda x: x.name)
print(f"Found {len(test_cases)} test cases to process.")

for test_case in test_cases:
    initial_database_query = (test_case / 'initial_database.sql').read_text()
    user_query = (test_case / 'user_query.sql').read_text()
    validation_query = (test_case / 'validation_query.sql').read_text()
    hash = hashlib.sha256(json.dumps({
        'initial_database': initial_database_query,
        'user_query': user_query,
        'validation_query': validation_query
    }, separators=(",", ":"), ensure_ascii=False).encode('utf-8')).hexdigest()
    if hash != test_case.name:
        raise ValueError(f"Hash mismatch for {test_case.name}: expected {test_case.name}, got {hash}")
