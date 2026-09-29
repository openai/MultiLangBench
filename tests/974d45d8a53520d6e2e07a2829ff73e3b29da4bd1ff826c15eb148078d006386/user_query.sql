CREATE TABLE sfi_result AS
SELECT *, 'x' AS marker
FROM t1
WHERE (a2=1 OR a3=2)
  AND a1 = (
    SELECT d FROM (SELECT DISTINCT d FROM t2) WHERE d=3
  );