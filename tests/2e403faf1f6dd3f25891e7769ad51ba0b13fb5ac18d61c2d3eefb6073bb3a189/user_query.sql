BEGIN;
CREATE TABLE t1(a, b, c);
CREATE TABLE t2(d, e, f);
CREATE INDEX i1 ON t1(a, b, c);
CREATE INDEX i2 ON t2(d, e, f);
WITH RECURSIVE n(x) AS (
  SELECT 1
  UNION ALL
  SELECT x+1 FROM n WHERE x<50
)
INSERT INTO t1(a,b,c)
SELECT
  CASE x%5
    WHEN 0 THEN NULL
    WHEN 1 THEN x*17
    WHEN 2 THEN x/51.0
    WHEN 3 THEN substr('s'||hex(zeroblob(1250)),1,(x*47)%2500+1)
    ELSE CAST(substr('b'||hex(zeroblob(1250)),1,(x*83)%2500+1) AS BLOB)
  END,
  CASE (x+1)%5
    WHEN 0 THEN NULL
    WHEN 1 THEN x*31
    WHEN 2 THEN (x+1)/53.0
    WHEN 3 THEN substr('s'||hex(zeroblob(1250)),1,(x*61+7)%2500+1)
    ELSE CAST(substr('b'||hex(zeroblob(1250)),1,(x*89+11)%2500+1) AS BLOB)
  END,
  CASE (x+2)%5
    WHEN 0 THEN NULL
    WHEN 1 THEN x*43
    WHEN 2 THEN (x+2)/59.0
    WHEN 3 THEN substr('s'||hex(zeroblob(1250)),1,(x*71+13)%2500+1)
    ELSE CAST(substr('b'||hex(zeroblob(1250)),1,(x*97+17)%2500+1) AS BLOB)
  END
FROM n;
WITH RECURSIVE n(x) AS (
  SELECT 1
  UNION ALL
  SELECT x+1 FROM n WHERE x<50
)
INSERT INTO t2(d,e,f)
SELECT
  CASE (x+3)%5
    WHEN 0 THEN NULL
    WHEN 1 THEN x*19
    WHEN 2 THEN (x+3)/61.0
    WHEN 3 THEN substr('s'||hex(zeroblob(1250)),1,(x*73+19)%2500+1)
    ELSE CAST(substr('b'||hex(zeroblob(1250)),1,(x*101+23)%2500+1) AS BLOB)
  END,
  CASE (x+4)%5
    WHEN 0 THEN NULL
    WHEN 1 THEN x*37
    WHEN 2 THEN (x+4)/67.0
    WHEN 3 THEN substr('s'||hex(zeroblob(1250)),1,(x*79+29)%2500+1)
    ELSE CAST(substr('b'||hex(zeroblob(1250)),1,(x*103+31)%2500+1) AS BLOB)
  END,
  CASE (x+5)%5
    WHEN 0 THEN NULL
    WHEN 1 THEN x*41
    WHEN 2 THEN (x+5)/71.0
    WHEN 3 THEN substr('s'||hex(zeroblob(1250)),1,(x*107+37)%2500+1)
    ELSE CAST(substr('b'||hex(zeroblob(1250)),1,(x*109+41)%2500+1) AS BLOB)
  END
FROM n;
COMMIT;