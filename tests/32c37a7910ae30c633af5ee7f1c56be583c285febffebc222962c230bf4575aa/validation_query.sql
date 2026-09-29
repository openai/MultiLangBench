WITH details(tbl,ord,name,kind,nn,pk) AS (
  SELECT 'flock_owner',p.cid,p.name,p.type,p."notnull",p.pk FROM pragma_table_info('flock_owner') AS p
  UNION ALL
  SELECT 'sheep',p.cid,p.name,p.type,p."notnull",p.pk FROM pragma_table_info('sheep') AS p
  UNION ALL
  SELECT s.tbl_name,-1,s.name,s.type,0,0 FROM sqlite_schema AS s
   WHERE s.type='index' AND s.tbl_name IN ('flock_owner','sheep')
)
SELECT tbl,ord,name,kind,nn,pk FROM details ORDER BY tbl,ord,name;