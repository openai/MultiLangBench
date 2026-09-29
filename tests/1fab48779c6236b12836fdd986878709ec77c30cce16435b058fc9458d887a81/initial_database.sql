CREATE TABLE t1(aa VARCHAR PRIMARY KEY NOT NULL,bb,cc,x VARCHAR(400));
INSERT INTO t1(aa,bb,cc) VALUES('maroon','meal','lecture');
INSERT INTO t1(aa,bb,cc) VALUES('reality','meal','catsear');
CREATE TABLE t2(aa VARCHAR PRIMARY KEY, dd INT DEFAULT 1, ee, x VARCHAR(100));
INSERT INTO t2(aa,dd,ee) VALUES('maroon',0,'travel'),('reality',0,'hour');
CREATE INDEX t2x1 ON t2(dd,ee);
ANALYZE;
DROP TABLE IF EXISTS sqlite_stat4;
DELETE FROM sqlite_stat1;
INSERT INTO sqlite_stat1 VALUES
  ('t2','t2x1','3 3 3'),
  ('t2','sqlite_autoindex_t2_1','3 1'),
  ('t1','sqlite_autoindex_t1_1','2 1');
ANALYZE sqlite_master;