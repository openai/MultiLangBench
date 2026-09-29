PRAGMA page_size = 4096;
PRAGMA cache_size = 10;
CREATE TABLE t1(c1 TEXT, c2 TEXT);
BEGIN;
WITH RECURSIVE seq(i) AS (
  VALUES(1)
  UNION ALL
  SELECT i+1 FROM seq WHERE i<2000
)
INSERT INTO t1(c1, c2)
SELECT replace(hex(zeroblob(i)), '00', '.'),
       replace(hex(zeroblob(200)), '00', 'abcdefghij')
FROM seq;
COMMIT;
CREATE TABLE result(value INTEGER);