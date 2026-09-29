BEGIN;
INSERT INTO t1 VALUES(hex(zeroblob(5000)));
INSERT INTO t1 VALUES(hex(zeroblob(100)));
DELETE FROM t1 WHERE rowid=1;
PRAGMA shrink_memory;
INSERT INTO t1 VALUES(hex(zeroblob(5000)));
COMMIT;