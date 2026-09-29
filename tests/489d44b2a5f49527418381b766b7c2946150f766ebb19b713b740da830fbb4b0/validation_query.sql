WITH r(seq,item,v1,v2) AS (
  SELECT 0, type || ':' || name, sql, NULL
    FROM sqlite_schema
   WHERE name IN ('p1','c1')
  UNION ALL
  SELECT 1, 'p1', quote(a), quote(b) FROM p1
  UNION ALL
  SELECT 2, 'c1', quote(x), NULL FROM c1
)
SELECT item,v1,v2 FROM r ORDER BY seq,item,v1,v2;