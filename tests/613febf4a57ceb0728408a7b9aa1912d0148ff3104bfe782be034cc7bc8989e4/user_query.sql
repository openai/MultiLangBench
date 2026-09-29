CREATE TABLE in6_result AS
SELECT quote(x) AS qx, quote(a) AS qa, quote(b) AS qb, 'x' AS marker
FROM t2 LEFT JOIN t1 ON a=x AND b IN (NULL,0,10);