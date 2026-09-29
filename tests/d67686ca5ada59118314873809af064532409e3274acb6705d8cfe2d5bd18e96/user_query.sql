INSERT INTO result(v)
SELECT substr(a, ',') IS TRUE
FROM t1
ORDER BY rowid DESC;