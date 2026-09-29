WITH cols(tbl,cid,column_name,decl_type,pk) AS (
  SELECT 't2a',cid,name,type,pk FROM pragma_table_info('t2a')
  UNION ALL SELECT 't2b',cid,name,type,pk FROM pragma_table_info('t2b')
  UNION ALL SELECT 't2c',cid,name,type,pk FROM pragma_table_info('t2c')
  UNION ALL SELECT 't2d',cid,name,type,pk FROM pragma_table_info('t2d')
)
SELECT tbl,cid,column_name,decl_type,pk FROM cols ORDER BY tbl,cid;