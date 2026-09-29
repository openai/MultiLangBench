WITH observed(kind, x, y, z) AS (
  SELECT 'row', CAST(a AS TEXT), CAST(b AS TEXT), CAST(c AS TEXT) FROM t1
  UNION ALL
  SELECT 'schema', type, name, replace(replace(sql, char(13), ''), char(10), ' ')
    FROM sqlite_schema
   WHERE name IN ('t1', 'i1', 'i2')
)
SELECT kind, x, y, z FROM observed ORDER BY kind, x, y, z;