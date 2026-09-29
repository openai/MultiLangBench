CREATE TABLE result AS
SELECT b AS sort_key,
       group_concat(a, ',') OVER win AS gc
FROM t1
WINDOW win AS (
  ORDER BY b RANGE BETWEEN 1 PRECEDING AND 2 PRECEDING
)
ORDER BY b;