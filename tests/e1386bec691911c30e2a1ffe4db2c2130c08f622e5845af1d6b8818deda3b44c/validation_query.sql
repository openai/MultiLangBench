WITH snapshot(kind,item,detail) AS (
  SELECT 'schema', name, type || '|' || COALESCE(sql,'')
    FROM sqlite_schema WHERE tbl_name='t1'
  UNION ALL
  SELECT 'data', printf('%03d',a), b || '|' || printf('%d|%d|%d',c,d,e)
    FROM t1
)
SELECT kind,item,detail FROM snapshot ORDER BY kind,item;