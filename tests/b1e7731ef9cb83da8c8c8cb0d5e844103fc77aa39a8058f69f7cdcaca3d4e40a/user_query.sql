WITH nx(a,b) AS (VALUES(1,8),(2,11),(3,1),(2,15),(1,4),(1,99))
INSERT INTO main.t1 AS t2(a,b) SELECT a,b FROM nx WHERE true
ON CONFLICT(a) DO UPDATE SET b=excluded.b, c=t2.c+1 WHERE t2.b<excluded.b;