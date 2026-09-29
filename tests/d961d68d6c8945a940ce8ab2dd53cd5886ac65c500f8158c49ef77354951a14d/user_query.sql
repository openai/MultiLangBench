CREATE TABLE IF NOT EXISTS wordcount_c(
  word TEXT PRIMARY KEY,
  cnt INTEGER
) without rowid;
INSERT INTO wordcount_c VALUES('one',1);