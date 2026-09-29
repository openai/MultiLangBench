CREATE VIRTUAL TABLE ft2 USING fts4;
INSERT INTO ft2(rowid, content) VALUES(1, 'a b c');
INSERT INTO ft2(rowid, content) VALUES(2, 'a b d');
INSERT INTO ft2(rowid, content) VALUES(3, 'a b e');