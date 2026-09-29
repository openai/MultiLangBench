WITH RECURSIVE c(x) AS (
  VALUES(0) UNION ALL SELECT x+1 FROM c WHERE x<1
)
INSERT INTO result(value)
SELECT x1.x||x2.x||x3.x||x4.x
FROM c AS x1, c AS x2, c AS x3, c AS x4
ORDER BY 1;