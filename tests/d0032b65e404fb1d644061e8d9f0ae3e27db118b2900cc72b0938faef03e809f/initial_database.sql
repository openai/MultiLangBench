CREATE TABLE x1_rules(ruleset, cFrom, cTo, cost);
WITH RECURSIVE n(i) AS (
  VALUES(0)
  UNION ALL
  SELECT i+1 FROM n WHERE i<25
)
INSERT INTO x1_rules(ruleset, cFrom, cTo, cost)
SELECT 0,
       char(97+a.i)||char(97+b.i),
       char(97+c.i)||char(97+d.i),
       ((a.i*17576 + b.i*676 + c.i*26 + d.i) % 1000) + 1
FROM n AS a CROSS JOIN n AS b CROSS JOIN n AS c CROSS JOIN n AS d
ORDER BY a.i, b.i, c.i, d.i;
UPDATE x1_rules SET cost=20 WHERE cost<20 AND cFrom!='xx';