CREATE TABLE result_720 AS
SELECT t2.cc AS cc, t2.dd AS dd, t2.ee AS ee
FROM t1 CROSS JOIN t2 ON t1.aa=t2.cc
WHERE t1.bb='meal'
ORDER BY t2.dd LIMIT 1;