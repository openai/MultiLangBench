CREATE VIRTUAL TABLE t1 USING fts3(a, b, c);
INSERT INTO t1(a, b, c) VALUES('one three four', 'one four', 'one four two');
ALTER TABLE t1 RENAME TO fts_t1;
CREATE TABLE t1_segdir(a, b, c);