CREATE TABLE query_result AS
SELECT count(*) AS n FROM t1, t1 LEFT JOIN empty;