CREATE TABLE IF NOT EXISTS wordcount_d(
  word TEXT PRIMARY KEY,
  cnt INTEGER
) WITHOUT rowid;
INSERT INTO wordcount_d VALUES('one',1);