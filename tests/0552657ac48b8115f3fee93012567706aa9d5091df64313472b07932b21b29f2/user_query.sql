INSERT INTO query_result(t1_title, t2_title)
SELECT t1_title, t2_title
FROM t1 LEFT JOIN t2
WHERE t2_id = (
  SELECT t3_id FROM (
    SELECT t3_id FROM t3 WHERE t3_title=t1_title LIMIT 500
  )
);