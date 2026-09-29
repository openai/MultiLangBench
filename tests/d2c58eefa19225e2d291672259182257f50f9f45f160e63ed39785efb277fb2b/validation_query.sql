WITH q(ord, sql) AS (
  SELECT 1, sql FROM sqlite_schema WHERE type='table' AND name='x1'
  UNION ALL
  SELECT 2, sql FROM sqlite_schema WHERE type='index' AND name='x1i'
  UNION ALL
  SELECT 3, sql FROM __temp_trigger_sql
)
SELECT sql FROM q ORDER BY ord