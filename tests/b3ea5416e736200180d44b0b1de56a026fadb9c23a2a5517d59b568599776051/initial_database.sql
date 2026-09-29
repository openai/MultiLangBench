CREATE TABLE t1(w int, x int, y int);
CREATE TABLE t2(p int, q int, r int, s int);
WITH RECURSIVE n(i) AS (
  VALUES(1)
  UNION ALL
  SELECT i+1 FROM n WHERE i<100
)
INSERT INTO t1
SELECT i,
       CASE WHEN i>=64 THEN 6 WHEN i>=32 THEN 5 WHEN i>=16 THEN 4 WHEN i>=8 THEN 3 WHEN i>=4 THEN 2 WHEN i>=2 THEN 1 ELSE 0 END,
       i*i + 2*i + 1
FROM n;
INSERT INTO t2 SELECT 101-w, x, (SELECT max(y)+1 FROM t1)-y, y FROM t1;