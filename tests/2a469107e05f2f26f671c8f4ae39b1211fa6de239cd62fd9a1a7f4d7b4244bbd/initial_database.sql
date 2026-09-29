CREATE VIRTUAL TABLE t2 USING fts4;
INSERT INTO t2 VALUES(replace(hex(zeroblob(10000)), '00', 'a '));
INSERT INTO t2 VALUES('b ' || replace(hex(zeroblob(10000)), '00', 'z '));
WITH RECURSIVE n(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM n WHERE x<50) INSERT INTO t2(content) SELECT 'x' FROM n;