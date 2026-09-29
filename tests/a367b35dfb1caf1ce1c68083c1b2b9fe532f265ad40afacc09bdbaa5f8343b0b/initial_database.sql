CREATE VIRTUAL TABLE t1 USING fts4;
INSERT INTO t1 VALUES(replace(hex(zeroblob(20000)), '00', 'a '));