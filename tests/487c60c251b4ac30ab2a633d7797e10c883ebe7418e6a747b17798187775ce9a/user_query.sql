INSERT INTO result(value)
SELECT (
  WITH t1(a) AS (VALUES(1))
  SELECT (
    WITH t2(b) AS (
      WITH t3(c) AS (
        WITH t4(d) AS (VALUES('elvis'))
        SELECT t4a.d FROM t4 AS t4a JOIN t4 AS t4b LEFT JOIN t4 AS t4c
      )
      SELECT c FROM t3 WHERE a = 1
    )
    SELECT t2a.b FROM t2 AS t2a JOIN t2 AS t2x
  )
  FROM t1 GROUP BY 1
)
GROUP BY 1;