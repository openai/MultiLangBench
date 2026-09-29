CREATE TABLE rr(a, b);
CREATE VIEW vv AS SELECT * FROM (
  WITH abc(d, e) AS (SELECT * FROM rr)
  SELECT * FROM abc
);