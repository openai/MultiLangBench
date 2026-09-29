-- in3-2.4
CREATE TABLE query_result(seq INTEGER PRIMARY KEY, value);
INSERT INTO query_result(value)
SELECT rowid FROM t1 WHERE rowid IN (SELECT rowid FROM t1 WHERE rowid IN (-1, 2, 4));