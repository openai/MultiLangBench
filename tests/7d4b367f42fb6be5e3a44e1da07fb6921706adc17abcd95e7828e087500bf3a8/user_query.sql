CREATE TABLE result AS
SELECT count(DISTINCT a) AS ca,
       count(DISTINCT b) AS cb,
       count(DISTINCT c) AS cc,
       count(ALL a) AS n_all
FROM t1;