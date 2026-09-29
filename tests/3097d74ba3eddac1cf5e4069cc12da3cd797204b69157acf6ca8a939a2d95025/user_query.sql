CREATE TABLE result AS
SELECT t1.a AS a,t1.b AS b,t2.c AS c,t2.d AS d,t3.e AS e,t3.f AS f
FROM t1 LEFT JOIN t2 ON (t2.c=+t1.a) LEFT JOIN t3 ON (t2.d IS NULL);