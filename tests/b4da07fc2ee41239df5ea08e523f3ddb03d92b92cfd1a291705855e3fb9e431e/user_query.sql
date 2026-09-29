CREATE VIRTUAL TABLE t1 USING fts3(a, b);
INSERT INTO t1 VALUES('one two', 'one');
INSERT INTO t1 VALUES('one two', 'three');
INSERT INTO t1 VALUES('one two', 'two');