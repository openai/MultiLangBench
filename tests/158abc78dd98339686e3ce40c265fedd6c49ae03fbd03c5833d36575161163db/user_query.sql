PRAGMA foreign_keys=ON;
CREATE TABLE t2(
  a PRIMARY KEY, b, c, d, e,
  FOREIGN KEY(b, c) REFERENCES t2(d, e)
) WITHOUT ROWID;
CREATE UNIQUE INDEX idx ON t2(d, e);
INSERT INTO t2 VALUES(1, 'one', 'one', 'one', 'one');
INSERT INTO t2 VALUES(2, 'one', 'one', 'one', NULL);