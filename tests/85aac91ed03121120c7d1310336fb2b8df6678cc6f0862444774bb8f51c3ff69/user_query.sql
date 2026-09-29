CREATE VIRTUAL TABLE t1 USING fts4;
INSERT INTO t1 VALUES('one two three four');
INSERT INTO t1 VALUES('three four five six');
INSERT INTO t1 VALUES('one three five seven');
CREATE VIRTUAL TABLE terms USING fts4aux(t1);
CREATE TABLE _sfi_result AS SELECT term, documents, occurrences FROM terms WHERE col='*';