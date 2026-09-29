PRAGMA writable_schema=ON;
INSERT INTO sqlite_master(type,name,tbl_name,rootpage,sql)
  SELECT 'view','count_result','count_result',count(*),'CREATE VIEW count_result AS SELECT 1 AS x'
  FROM sqlite_master;
PRAGMA writable_schema=OFF;