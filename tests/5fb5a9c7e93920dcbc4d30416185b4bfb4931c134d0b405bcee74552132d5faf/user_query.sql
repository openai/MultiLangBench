CREATE TABLE sfi_result AS
SELECT * FROM t1, t2 WHERE
  (a='A' AND d='E') OR
  (b='B' AND c IN ('C', 'D', 'E'));