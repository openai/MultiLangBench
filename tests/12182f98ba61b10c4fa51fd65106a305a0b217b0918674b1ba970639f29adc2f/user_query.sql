CREATE INDEX i1 ON t1(a);
INSERT INTO result(v)
SELECT count(*) FROM t1 WHERE substr(a, ',');