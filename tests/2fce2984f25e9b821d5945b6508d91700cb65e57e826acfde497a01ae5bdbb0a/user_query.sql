INSERT INTO t1 VALUES('one one one three three three');
CREATE TABLE _sfi_result AS SELECT term, documents, occurrences FROM terms WHERE col='*';