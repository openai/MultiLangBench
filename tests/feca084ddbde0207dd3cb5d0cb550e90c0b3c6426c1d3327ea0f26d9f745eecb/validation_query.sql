WITH x(k,v1,v2) AS (
  SELECT 't1-row', CAST(a AS TEXT), b FROM t1
  UNION ALL
  SELECT 'schema', type, name FROM sqlite_schema
    WHERE name IN ('t1','v1','log','v1del','v1upd')
  UNION ALL
  SELECT 'log-count', CAST(count(*) AS TEXT), '' FROM log
)
SELECT k,v1,v2 FROM x ORDER BY k,v1,v2;