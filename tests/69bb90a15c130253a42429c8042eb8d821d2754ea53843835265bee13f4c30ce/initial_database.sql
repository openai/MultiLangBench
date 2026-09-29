CREATE VIRTUAL TABLE t2 USING fts4;
INSERT INTO t2 VALUES(replace(hex(zeroblob(10000)), '00', 'a '));