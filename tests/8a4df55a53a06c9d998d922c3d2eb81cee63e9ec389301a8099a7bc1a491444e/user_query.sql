PRAGMA main.cache_size=200000;
ATTACH ':memory:' AS aux;
PRAGMA aux.auto_vacuum=NONE;
CREATE TABLE aux.t1(a INTEGER, b TEXT, c INTEGER);
BEGIN;
WITH RECURSIVE n(i) AS (VALUES(0) UNION ALL SELECT i+1 FROM n WHERE i<999)
INSERT INTO main.t1(a,b,c)
SELECT i, substr(hex(zeroblob(5001)),1,10001), i FROM n;
INSERT INTO aux.t1 SELECT * FROM main.t1;
COMMIT;
CREATE TABLE main.population_result AS
SELECT (SELECT count(*) FROM main.t1) AS main_count,
       (SELECT count(*) FROM aux.t1) AS aux_count;