WITH state(src,k,v1,v2) AS (
  SELECT 't1', a, b, c FROM t1
  UNION ALL
  SELECT 'c1', x, b, NULL FROM c1
  UNION ALL
  SELECT 'c2', x, c, NULL FROM c2
  UNION ALL
  SELECT 'dual', NULL, dummy, NULL FROM dual
)
SELECT src, k, v1, v2 FROM state ORDER BY src, k IS NULL, k;