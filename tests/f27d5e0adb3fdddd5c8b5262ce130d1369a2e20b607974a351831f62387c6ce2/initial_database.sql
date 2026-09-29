PRAGMA auto_vacuum = incremental;
CREATE TABLE t1(x, y);
CREATE UNIQUE INDEX i1 ON t1(x);
CREATE INDEX i2 ON t1(y);
WITH v(x) AS (VALUES (497),(166),(230),(355),(779),(588),(394),(317),(290),(475),(362),(193),(805),(851),(564),(763),(44),(930),(389),(819),(765),(760),(966),(280),(538),(414),(500),(18),(25),(287),(320),(30),(382),(751),(87),(283),(981),(429),(630),(974),(421),(270),(810),(405)) INSERT INTO t1(x,y) SELECT x, CAST(x AS TEXT) || ':' || hex(zeroblob(250)) FROM v;