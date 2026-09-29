PRAGMA auto_vacuum = incremental;
CREATE TABLE t1(x, y);
CREATE UNIQUE INDEX i1 ON t1(x);
CREATE INDEX i2 ON t1(y);