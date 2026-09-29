CREATE TABLE result_700 AS
SELECT t1.aa AS aa1, t1.bb AS bb, t1.cc AS cc, t1.x AS x1,
       t2.aa AS aa2, t2.dd AS dd, t2.ee AS ee, t2.x AS x2
FROM t1 LEFT JOIN t2 ON t1.aa=t2.aa
WHERE t1.bb='meal'
ORDER BY t2.dd DESC
LIMIT 1;