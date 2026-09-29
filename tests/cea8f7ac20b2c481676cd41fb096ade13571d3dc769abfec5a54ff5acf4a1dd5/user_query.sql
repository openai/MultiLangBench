PRAGMA automatic_index=OFF;
CREATE TABLE result AS
  SELECT b, (SELECT d FROM t2 WHERE c=a) AS d FROM t1;