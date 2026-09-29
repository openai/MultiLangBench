PRAGMA auto_vacuum = 0;
PRAGMA page_size=1024;
CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
INSERT INTO t1(b) VALUES(zeroblob(300)),(zeroblob(300)),(zeroblob(300)),(zeroblob(300));
CREATE TABLE t2(a);
CREATE TRIGGER t1tr BEFORE UPDATE ON t1 BEGIN DELETE FROM t2; END;
PRAGMA writable_schema=ON;
UPDATE sqlite_schema SET rootpage=3 WHERE rowid=2;
PRAGMA writable_schema=RESET;
INSERT INTO t2 VALUES('active'),('boomer'),('atom'),('atomic'),
       ('alpha channel backup abandon test aback boomer atom alpha active');