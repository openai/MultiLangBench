DROP TABLE t1;
CREATE TABLE t1(log int, cnt int);
PRAGMA count_changes=ON;
INSERT INTO t1 SELECT log, count(*) FROM d1 GROUP BY log EXCEPT SELECT n-1, log FROM d1;