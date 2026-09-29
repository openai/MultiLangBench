CREATE TABLE query_result AS
SELECT out.rowid AS source_rowid, (
  SELECT c FROM (
    SELECT * FROM t4 WHERE a=out.a ORDER BY b LIMIT 10 OFFSET 1
  ) WHERE b=out.b
) AS result_value
FROM t4 AS out;