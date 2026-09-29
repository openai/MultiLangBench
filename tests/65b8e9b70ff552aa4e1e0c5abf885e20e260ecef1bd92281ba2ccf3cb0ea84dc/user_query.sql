WITH
  x1 AS (SELECT 10),
  x2 AS (SELECT 11),
  x3 AS (
    SELECT * FROM x1 UNION ALL SELECT * FROM x2
  ),
  x4 AS (
    WITH
      x1 AS (SELECT 12),
      x2 AS (SELECT 13)
    SELECT * FROM x3
  )
INSERT INTO result(value)
SELECT * FROM x4;