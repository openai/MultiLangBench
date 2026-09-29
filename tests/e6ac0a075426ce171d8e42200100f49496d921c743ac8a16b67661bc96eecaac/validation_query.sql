WITH x(src,pos,x,y,z) AS (
  SELECT 't1',rowid,quote(a),quote(b),quote(c) FROM t1
  UNION ALL
  SELECT 't2',rowid,quote(d),quote(e),quote(f) FROM t2
  UNION ALL
  SELECT 'index',0,name,'','' FROM sqlite_schema
    WHERE type='index' AND name IN ('t1a','t1bc')
)
SELECT src,pos,x,y,z FROM x ORDER BY src,pos,x;