CREATE TABLE result_710 AS
SELECT t2.cc AS cc, t2.dd AS dd, t2.ee AS ee
FROM t1 CROSS JOIN t2 ON t1.aa=t2.cc
ORDER BY t2.dd LIMIT 1;