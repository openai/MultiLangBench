INSERT INTO query_result(x)
SELECT (
  SELECT 1
  FROM (SELECT 1 FROM t1 WHERE a=1 OR b='i')
  WHERE a='o'
     OR b IN (SELECT a=('b' IN (SELECT 'a')))
)
FROM t1;