CREATE TABLE t1(log int, cnt int);
PRAGMA count_changes=ON;
EXPLAIN INSERT INTO t1 SELECT log, count(*) FROM d1 GROUP BY log;
INSERT INTO t1 SELECT log, count(*) FROM d1 GROUP BY log;