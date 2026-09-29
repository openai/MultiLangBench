WITH r(kind, seq, c1, c2, c3) AS (
  SELECT 'log', rowid, x, CAST(a AS TEXT), CAST(b AS TEXT) FROM log
  UNION ALL
  SELECT 'schema', 0, type, name, tbl_name FROM sqlite_schema
   WHERE name='t1' OR name GLOB 't1_*'
)
SELECT kind, seq, c1, c2, c3 FROM r ORDER BY kind, seq, c1, c2, c3;