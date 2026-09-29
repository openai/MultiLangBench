CREATE TABLE sfi_result AS
SELECT * FROM t1, t2 WHERE
  (b='B' AND c IN (SELECT c FROM t1)) OR
  (a='A' AND d='E');