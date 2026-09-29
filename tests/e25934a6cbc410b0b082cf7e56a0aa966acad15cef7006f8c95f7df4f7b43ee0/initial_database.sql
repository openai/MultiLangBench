CREATE VIRTUAL TABLE ft2 USING fts4;
INSERT INTO ft2(rowid, content) VALUES(1, 'a b c');
INSERT INTO ft2(rowid, content) VALUES(2, 'a b d');
INSERT INTO ft2(rowid, content) VALUES(3, 'a b e');
INSERT INTO ft2(rowid, content) VALUES(4, 'a b f');
UPDATE ft2 SET docid=5 WHERE docid=4;
UPDATE ft2 SET docid=3 WHERE docid=4;
INSERT INTO ft2(rowid, content) VALUES(4, 'a b g');
UPDATE ft2 SET docid=-1 WHERE docid=4;