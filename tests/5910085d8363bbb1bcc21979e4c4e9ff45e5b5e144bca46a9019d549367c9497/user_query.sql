INSERT INTO t1(a,b) VALUES(1,8),(2,11),(3,1)
ON CONFLICT(a) DO UPDATE SET b=excluded.b, c=c+1 WHERE t1.b<excluded.b;