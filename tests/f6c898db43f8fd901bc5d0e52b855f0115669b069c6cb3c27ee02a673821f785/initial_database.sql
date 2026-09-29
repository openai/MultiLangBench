CREATE VIRTUAL TABLE ft1 USING fts4(x, y);
INSERT INTO ft1 VALUES('a b', 'c d');
INSERT INTO ft1 VALUES('e e', 'c d');
INSERT INTO ft1 VALUES('a a', 'b b');