CREATE TABLE in6_result AS
SELECT quote(a) AS qa, quote(b) AS qb, '|' AS sep
FROM t1
WHERE b IN (SELECT a FROM t1) AND a=0;