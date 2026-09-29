CREATE TABLE result_110_2 AS
SELECT t1.a AS a, t1.b AS b, '|' AS marker
FROM t2, t1
WHERE t2.x='a' AND t1.a=t2.y
ORDER BY +t1.b LIMIT 5;