WITH facts(k, v) AS (
  SELECT 'row-' || printf('%d', fou), quote(one) || '|' || quote(two) || '|' || quote(thr) || '|' || quote(fou) FROM xyz
  UNION ALL
  SELECT 'index-' || name, printf('%d|%s|%d', "unique", origin, partial) FROM pragma_index_list('xyz') WHERE name='xyz_one_two'
  UNION ALL
  SELECT 'index-column-' || printf('%d', seqno), name FROM pragma_index_info('xyz_one_two')
)
SELECT k, v FROM facts ORDER BY k;