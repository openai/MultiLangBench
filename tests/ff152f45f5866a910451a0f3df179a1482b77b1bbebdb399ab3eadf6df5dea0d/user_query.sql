WITH t5(t5col1) AS (
  SELECT (
    WITH t3(t3col1) AS (
      WITH t2 AS (
        WITH t1 AS (SELECT 1 AS c1 GROUP BY 1)
        SELECT a.c1 FROM t1 AS a, t1 AS b
        WHERE anoncol1 = 1
      )
      SELECT (SELECT 1 FROM t2) FROM t2
    )
    SELECT t3col1 FROM t3 WHERE t3col1
  ) FROM (SELECT 1 AS anoncol1)
)
INSERT INTO result(v1, v2)
SELECT t5col1, t5col1 FROM t5;