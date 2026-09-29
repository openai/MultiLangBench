CREATE TABLE result AS
SELECT t1.a AS a,t1.b AS b,t2.c AS c,t2.d AS d,t3.e AS e,t3.f AS f
FROM t1, t2 LEFT JOIN t3 ON (t2.d=1)
WHERE t2.c = +t1.a;