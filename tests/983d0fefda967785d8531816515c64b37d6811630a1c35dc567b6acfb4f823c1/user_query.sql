CREATE TABLE IF NOT EXISTS wordcount_b(
  word TEXT PRIMARY KEY,
  cnt INTEGER
) WITHOUT rowid;
INSERT INTO wordcount_b VALUES('one',1);