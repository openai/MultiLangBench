CREATE TEMP TABLE t1(x UNIQUE);
INSERT INTO t1 VALUES(1);
CREATE TEMP TABLE t3(w, z);
DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
DROP TABLE IF EXISTS t3;
CREATE TEMP TABLE t1(x UNIQUE);
INSERT INTO t1 VALUES(1);
CREATE TABLE t2(x, y);
INSERT INTO t2 VALUES(1, 2);
CREATE TABLE sfi_capture(t1_count INTEGER, t1_min, t1_max, t1_sql TEXT, temp_t3_count INTEGER);
INSERT INTO sfi_capture
SELECT (SELECT count(*) FROM temp.t1),
       (SELECT min(x) FROM temp.t1),
       (SELECT max(x) FROM temp.t1),
       (SELECT sql FROM temp.sqlite_schema WHERE type='table' AND name='t1'),
       (SELECT count(*) FROM temp.sqlite_schema WHERE type='table' AND name='t3');