WITH x(section,k,v1,v2,v3,ord) AS (
  SELECT 'schema', name, type, sql, '', 0
    FROM sqlite_schema
   WHERE name IN ('t1','t2','t3')
  UNION ALL
  SELECT 'data:t1', CAST(rowid AS TEXT), quote(a), quote(b), '', rowid FROM t1
  UNION ALL
  SELECT 'data:t2', CAST(m AS TEXT), quote(n), quote(a), quote(p), m FROM t2
  UNION ALL
  SELECT 'data:t3', CAST(rowid AS TEXT), quote(m), '', '', rowid FROM t3
)
SELECT section, k, v1, v2, v3 FROM x ORDER BY section, ord, k;