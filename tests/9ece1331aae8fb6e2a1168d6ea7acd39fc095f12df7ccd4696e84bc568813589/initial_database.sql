PRAGMA page_size=1024;
PRAGMA max_page_count=40;
PRAGMA auto_vacuum=0;
CREATE TABLE filler (fill);
BEGIN;
WITH RECURSIVE c(i) AS (
  VALUES(1)
  UNION ALL
  SELECT i+1 FROM c WHERE i<34
)
INSERT INTO filler(fill) SELECT zeroblob(1024) FROM c;
COMMIT;