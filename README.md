# MultiLangBench

This is an eval where a language model has to implement SQLite version 3.40.1. It is given the documentation, and its implementation is tested against a test suite. The test suite was created from the SQLite `TCL Tests`. Each test was converted to have these three parts:
- `initial_database` - SQL code that creates an initial database file
- `user_query` - An SQL query that the candidate's implementation must run against the initial database, to produce a modified database file.
- `validation_query` - An SQL query that is run against the modified database file using the real SQLite 3.40.1. The test passes if this validation query produces the exact expected output string.

Of the 51k tests in `TCL Tests`, 24k were able to be converted in this way.

The test names are sha256 hashes are generated from the `initial_database`, `user_query`, `validation_query`.

The score on the eval is the tuple of (`api_cost`, `test_pass_rate`). If the model doesn't write the solution in the requested programming language, it's `test_pass_rate` should be set to 0.

Because running all 24k tests can be expensive, evals should only use the 272 tests starting with `00`, `01`, and `02`. It's acceptable to run the entire test suite for more precision with high scoring samples, but doing so should be noted.

## Environment Setup

The documentation for SQLite 3.40.1 can be found at https://sqlite.org/2022/sqlite-doc-3400100.zip and should be downloaded into the container for the model to reference. The model should provide an executable file that takes in a database path as a command line argument, and an SQL query string over stdin.

SQLite is a very popular program and often multiple copies of it are installed on a system. All traces of SQLite should be removed from the model's environment before starting the evaluation. This includes libraries, executables, and implementations embedded in other programs. An example of a script that removes SQLite is in `scripts/remove_sqlite.sh`, but you should analyze your environment to make sure SQLite is not present.

No internet access is allowed.

# Grading

The model's executable should be tested by uploading the `input.db` into the environment, running the model's implementation with `user_query` as the stdin and the path to the input database as the command line argument, and then taking the resulting modified database file out of the container as `output.db`. The real SQLite 3.40.1 should be used to run the `validation_query` against this output database, and the test passes if the expected output matches the golden expected output. If a test case doesn't match, crashes or times out (60 seconds), it is marked as a fail.

If the model doesn't write in the target programming language, or uses a mix of programming languages, it should fail. Another language model can be used to check the solutions to make sure they are in the required programming language.

## Validating your test setup

The source of truth for the tests is the SQL query strings and the SQLite binary. `expected_output.txt` files are also provided in this repo. Use them to check your test runner implementation.

## License

This project is licensed under the Apache License, Version 2.0. See [LICENSE](LICENSE) for details.
