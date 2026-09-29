PRAGMA page_size = 1024;
PRAGMA auto_vacuum = 0;
CREATE TABLE t1(x);
WITH s(i) AS (
  SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<500
)
INSERT INTO t1 SELECT zeroblob(300) FROM s;
CREATE TABLE t2(y);
CREATE TRIGGER tr BEFORE UPDATE ON t1 BEGIN
  DELETE FROM t2;
END;
PRAGMA writable_schema = ON;
UPDATE sqlite_schema SET rootpage = 137 WHERE name='t2';
PRAGMA writable_schema = RESET;