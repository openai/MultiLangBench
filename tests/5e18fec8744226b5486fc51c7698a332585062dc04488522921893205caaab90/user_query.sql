DROP TABLE t1;
CREATE TABLE t1(log int, cnt int);
PRAGMA count_changes=OFF;
INSERT INTO t1 SELECT log, count(*) FROM d1 GROUP BY log INTERSECT SELECT n-1, log FROM d1;