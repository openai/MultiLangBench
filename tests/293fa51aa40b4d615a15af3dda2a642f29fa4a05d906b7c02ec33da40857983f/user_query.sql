CREATE TABLE sfi_result AS
SELECT (
  SELECT aaa FROM t1 GROUP BY (
    SELECT bbb FROM (
      SELECT ccc AS bbb FROM (
        SELECT 1 ccc
      ) WHERE rowid IS NOT 1
    ) WHERE bbb = 1
  )
) AS v;