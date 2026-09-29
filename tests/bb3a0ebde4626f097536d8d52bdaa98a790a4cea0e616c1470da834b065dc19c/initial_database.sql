CREATE TABLE t1(docid, words);
WITH RECURSIVE c(i) AS (VALUES(1) UNION ALL SELECT i+1 FROM c WHERE i<20) INSERT INTO t1(docid,words) SELECT i, printf('word%d alpha beta',i) FROM c;
CREATE VIRTUAL TABLE x1 USING fts4;
INSERT INTO x1(docid,content) SELECT docid,words FROM t1;