CREATE VIRTUAL TABLE t1 USING fts3(col_a, col_b);
INSERT INTO t1(rowid, col_a, col_b) VALUES(1, 'testing', 'testing');
INSERT INTO t1(rowid, col_a, col_b) VALUES(2, 'only a', NULL);
INSERT INTO t1(rowid, col_a, col_b) VALUES(3, NULL, 'only b');
INSERT INTO t1(rowid, col_a, col_b) VALUES(4, NULL, NULL);
DELETE FROM t1 WHERE rowid = 1;
DELETE FROM t1 WHERE rowid = 2;
DELETE FROM t1 WHERE rowid = 3;