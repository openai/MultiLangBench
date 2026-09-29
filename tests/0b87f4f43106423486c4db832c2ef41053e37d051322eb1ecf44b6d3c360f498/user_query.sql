CREATE TABLE result AS
SELECT quote(x) || ' ' || quote(y) AS v FROM t1;