CREATE VIRTUAL TABLE ft USING fts3;
INSERT INTO ft(rowid, content) VALUES(1, '1 2 3');
INSERT INTO ft(rowid, content) VALUES(2, '4 5 6');
INSERT INTO ft(rowid, content) VALUES(3, '7 8 9');