WITH objects(kind,x,y) AS (
  SELECT 't1', CAST(a AS TEXT), b FROM t1
  UNION ALL
  SELECT 't2', c, d FROM t2
  UNION ALL
  SELECT 'meta', CAST((SELECT count(*) FROM t3) AS TEXT), CAST((SELECT count(*) FROM sqlite_schema WHERE type='trigger' AND name='t3t') AS TEXT)
)
SELECT kind,x,y FROM objects ORDER BY kind,x,y;