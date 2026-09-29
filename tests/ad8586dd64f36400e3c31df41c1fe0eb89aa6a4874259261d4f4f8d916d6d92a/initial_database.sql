CREATE TABLE t1(a,b,c,d);
CREATE INDEX t1a ON t1(a);
CREATE INDEX t1b ON t1(b);
CREATE INDEX t1cd ON t1(c,d);
WITH RECURSIVE nums(value) AS (
  VALUES(1)
  UNION ALL
  SELECT value+1 FROM nums WHERE value<256
)
INSERT INTO t1 SELECT value, value, value/100, value FROM nums;