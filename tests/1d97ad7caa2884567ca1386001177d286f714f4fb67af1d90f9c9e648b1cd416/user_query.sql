ATTACH ':memory:' AS aux;
PRAGMA aux.auto_vacuum=NONE;
CREATE TABLE aux.t1(a INTEGER, b TEXT, c INTEGER);
CREATE TABLE main.schema_result AS SELECT name FROM aux.sqlite_master ORDER BY 1;