WITH v(k,v) AS (
  SELECT 'schema:'||type||':'||name, coalesce(sql,'') FROM sqlite_schema WHERE name NOT LIKE 'sqlite_%'
  UNION ALL SELECT 'data:t1:'||printf('%020d',rowid), quote(x)||'|'||quote(y) FROM t1
  UNION ALL SELECT 'data:t2:'||quote(x), quote(y) FROM t2
  UNION ALL SELECT 'data:t3:'||printf('%020d',rowid), quote(a)||'|'||quote(b)||'|'||quote(c)||'|'||quote(d)||'|'||quote(e)||'|'||quote(f) FROM t3
  UNION ALL SELECT 'data:p1:'||printf('%020d',rowid), quote(x) FROM p1
  UNION ALL SELECT 'data:c1:'||printf('%020d',a), quote(b) FROM c1
) SELECT k,v FROM v ORDER BY k,v;