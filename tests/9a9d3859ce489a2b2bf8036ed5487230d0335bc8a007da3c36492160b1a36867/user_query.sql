PRAGMA cache_size = 10;
PRAGMA journal_mode = PERSIST;
INSERT INTO t1 VALUES(CAST(printf('%0200d', 1) AS BLOB), CAST(printf('%0300d', 1) AS BLOB));
INSERT INTO t1 SELECT CAST(printf('%0200d', rowid + 1) AS BLOB), CAST(printf('%0300d', rowid + 1) AS BLOB) FROM t1;
INSERT INTO t1 SELECT CAST(printf('%0200d', rowid + 2) AS BLOB), CAST(printf('%0300d', rowid + 2) AS BLOB) FROM t1;
INSERT INTO t1 SELECT CAST(printf('%0200d', rowid + 4) AS BLOB), CAST(printf('%0300d', rowid + 4) AS BLOB) FROM t1;
INSERT INTO t1 SELECT CAST(printf('%0200d', rowid + 8) AS BLOB), CAST(printf('%0300d', rowid + 8) AS BLOB) FROM t1;
INSERT INTO t1 SELECT CAST(printf('%0200d', rowid + 16) AS BLOB), CAST(printf('%0300d', rowid + 16) AS BLOB) FROM t1;
INSERT INTO t1 SELECT CAST(printf('%0200d', rowid + 32) AS BLOB), CAST(printf('%0300d', rowid + 32) AS BLOB) FROM t1;