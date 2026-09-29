WITH state(section,a,b) AS (
  SELECT 't1', CAST(x AS TEXT), CAST(y AS TEXT) FROM t1
  UNION ALL
  SELECT 't2', CAST(x AS TEXT), CAST(y AS TEXT) FROM t2
  UNION ALL
  SELECT 'object', type, name FROM sqlite_schema WHERE name IN ('t1','t1i1','t2')
  UNION ALL
  SELECT 'index-column', CAST(seqno AS TEXT), name FROM pragma_index_info('t1i1')
)
SELECT section,a,b FROM state ORDER BY section,a,b