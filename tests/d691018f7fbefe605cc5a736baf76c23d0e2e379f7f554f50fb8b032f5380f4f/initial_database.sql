PRAGMA auto_vacuum = 0;
PRAGMA journal_mode = DELETE;
PRAGMA page_size = 1024;
CREATE TABLE t1(a, b);
WITH RECURSIVE c(i) AS (
  VALUES(1)
  UNION ALL
  SELECT i+1 FROM c WHERE i<8192
)
INSERT INTO t1(a,b)
SELECT replace(hex(zeroblob(401)),'00','a'),
       replace(hex(zeroblob(402)),'00','b')
FROM c;