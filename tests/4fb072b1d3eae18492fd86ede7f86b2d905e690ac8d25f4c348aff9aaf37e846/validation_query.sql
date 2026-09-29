WITH observed(kind, x, y, z, w) AS (
  SELECT 'result', CAST(value AS TEXT), NULL, NULL, NULL FROM sfi_result_3_0
  UNION ALL
  SELECT 't3-row', CAST(a AS TEXT), CAST(b AS TEXT), CAST(c AS TEXT), CAST(d AS TEXT) FROM t3
  UNION ALL
  SELECT 'schema', type, name, replace(replace(sql, char(13), ''), char(10), ' '), NULL
    FROM sqlite_schema
   WHERE name IN ('t3', 't3i1', 't3i2')
)
SELECT kind, x, y, z, w FROM observed ORDER BY kind, x, y, z, w;