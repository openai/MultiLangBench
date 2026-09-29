INSERT INTO result(a,b,y)
SELECT x.a, x.b, (SELECT y FROM (SELECT x.b='alice' AS y))
FROM (SELECT * FROM t1) AS x;