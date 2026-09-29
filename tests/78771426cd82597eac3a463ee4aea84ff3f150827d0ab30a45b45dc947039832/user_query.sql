PRAGMA automatic_index=ON;
ANALYZE;
UPDATE sqlite_stat1 SET stat='10000' WHERE tbl='t1';
UPDATE sqlite_stat1 SET stat='16' WHERE tbl='t2';
ANALYZE sqlite_master;
CREATE TABLE result AS
  SELECT b, (SELECT d FROM t2 WHERE c=a) AS d FROM t1;