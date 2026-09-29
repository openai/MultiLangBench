WITH nx(a,b) AS (VALUES(1,8),(2,11),(3,1),(2,15),(1,4),(1,99))
INSERT INTO t1(a,b) SELECT a,b FROM nx WHERE true
ON CONFLICT(a) DO UPDATE SET b=excluded.b, c=c+1 WHERE t1.b<excluded.b;