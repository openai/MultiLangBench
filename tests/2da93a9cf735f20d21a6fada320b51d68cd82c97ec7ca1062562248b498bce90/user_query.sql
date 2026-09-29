CREATE VIRTUAL TABLE ft1 USING fts4(x, y);
INSERT INTO ft1 VALUES('a b', 'c d');
INSERT INTO ft1 VALUES('e e', 'c d');
INSERT INTO ft1 VALUES('a a', 'b b');
CREATE VIRTUAL TABLE temp.aux1 USING fts4aux(main, ft1);
CREATE TABLE main._sfi_result AS SELECT * FROM temp.aux1;