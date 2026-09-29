CREATE TABLE query_result AS
SELECT 'test-2' AS label, t3.c AS c, (
  SELECT count(*)
  FROM t1 JOIN (SELECT DISTINCT t3.c AS p FROM t2) AS x ON t1.a=x.p
) AS n
FROM t3;