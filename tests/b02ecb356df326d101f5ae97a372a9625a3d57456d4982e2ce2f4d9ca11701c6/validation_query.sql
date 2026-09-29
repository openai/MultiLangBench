WITH observation(ord, kind, x, y) AS (
  SELECT 0, 'fkey-row', to_tbl, quote(to_col) FROM fkey
  UNION ALL
  SELECT 10+p.cid, 't1-column', p.name,
         coalesce(p.type, '') || '|' || p.[notnull] || '|' || p.pk
    FROM pragma_table_info('t1') AS p
  UNION ALL
  SELECT 100+i.seq, 't1-index', i.name,
         i.[unique] || '|' || i.origin
    FROM pragma_index_list('t1') AS i
)
SELECT kind, x, y FROM observation ORDER BY ord, x;