CREATE TABLE sfi_result AS
SELECT (
  SELECT sum(z) FROM vvv WHERE x='aaa'
) AS v
FROM one;