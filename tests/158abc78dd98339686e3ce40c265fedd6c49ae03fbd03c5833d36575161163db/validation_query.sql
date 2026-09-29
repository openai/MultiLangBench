WITH r(seq,kind,k,v) AS (
  SELECT 0, 'schema', name, sql
    FROM sqlite_schema
   WHERE name IN ('t2','idx')
  UNION ALL
  SELECT 1, 'row', quote(a), quote(b) || ',' || quote(c) || ',' || quote(d) || ',' || quote(e)
    FROM t2
)
SELECT kind,k,v FROM r ORDER BY seq,k,v;