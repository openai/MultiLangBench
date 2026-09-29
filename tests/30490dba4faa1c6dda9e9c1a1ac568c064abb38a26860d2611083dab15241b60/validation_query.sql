WITH r(kind, seq, c1, c2, c3) AS (
  SELECT 'log', rowid, x, CAST(a AS TEXT), CAST(b AS TEXT) FROM log
  UNION ALL
  SELECT 'schema', 0, type, name, tbl_name FROM sqlite_schema
   WHERE (name='i1' AND type='index')
      OR (name='t1' AND type='table')
      OR (name='v1' AND type='view')
)
SELECT kind, seq, c1, c2, c3 FROM r ORDER BY kind, seq, c1, c2, c3;