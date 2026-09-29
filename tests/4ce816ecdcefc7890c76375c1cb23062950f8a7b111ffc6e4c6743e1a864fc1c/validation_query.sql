WITH r(seq,item,v1,v2) AS (
  SELECT 0, type || ':' || name, sql, NULL
    FROM sqlite_schema
   WHERE name IN ('p3','c3','p3d')
  UNION ALL
  SELECT 1, 'p3', quote(a), quote(b) FROM p3
  UNION ALL
  SELECT 2, 'c3', quote(x), NULL FROM c3
)
SELECT item,v1,v2 FROM r ORDER BY seq,item,v1,v2;