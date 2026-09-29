SELECT type, name, tbl_name, sql,
       CASE WHEN name='t1' THEN
         (SELECT group_concat(quote(a)||','||quote(b)||','||quote(c)||','||quote(d), '|')
            FROM (SELECT a,b,c,d FROM t1 ORDER BY d,b))
       END AS t1_rows,
       CASE WHEN name='x1' THEN (SELECT count(*) FROM x1) END AS x1_rows
FROM sqlite_schema
ORDER BY type, name;