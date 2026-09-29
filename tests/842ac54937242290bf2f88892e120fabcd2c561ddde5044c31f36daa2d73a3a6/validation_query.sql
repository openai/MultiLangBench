WITH r(seq,kind,k,v) AS (
  SELECT 0, 'schema', name, sql
    FROM sqlite_schema
   WHERE name IN ('parent','child')
  UNION ALL
  SELECT 1, 'parent', quote(p), typeof(p) FROM parent
  UNION ALL
  SELECT 2, 'child', quote(c), typeof(c) FROM child
  UNION ALL
  SELECT 3, 'foreign_key_check', 'violations', CAST(count(*) AS TEXT) FROM pragma_foreign_key_check
)
SELECT kind,k,v FROM r ORDER BY seq,k,v;