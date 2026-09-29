CREATE TABLE result AS
SELECT count(*) AS n FROM t2 HAVING count(*)<10;