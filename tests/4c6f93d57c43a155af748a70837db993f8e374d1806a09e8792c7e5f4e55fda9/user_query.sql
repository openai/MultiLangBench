PRAGMA automatic_index=ON;
CREATE TABLE result AS
  SELECT b, d FROM t1 JOIN t2 ON a=c ORDER BY b;