CREATE TABLE query_result AS
SELECT * FROM t3, t4, t5
 WHERE (v=111 AND x=w AND z!=999) OR (v=333 AND x=444)
 ORDER BY v, w, x, y, z;