PRAGMA automatic_index=OFF;
CREATE TABLE result AS
  SELECT b, d FROM t1 JOIN t2 ON a=c ORDER BY b;