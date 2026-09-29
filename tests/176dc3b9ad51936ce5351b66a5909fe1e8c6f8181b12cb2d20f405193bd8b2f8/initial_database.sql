CREATE VIRTUAL TABLE t2 USING fts4;
INSERT INTO t2 VALUES(replace(hex(zeroblob(10000)), '00', 'a '));
INSERT INTO t2 VALUES('b ' || replace(hex(zeroblob(10000)), '00', 'z '));
WITH RECURSIVE n(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM n WHERE x<50) INSERT INTO t2(content) SELECT 'x' FROM n;
INSERT INTO t2 VALUES('a b c d e f g z');
INSERT INTO t2 VALUES('a b c d e f g');
INSERT INTO t2(t2) VALUES('optimize');
UPDATE t2_segments SET block=zeroblob(length(block)) WHERE length(block)>10000;