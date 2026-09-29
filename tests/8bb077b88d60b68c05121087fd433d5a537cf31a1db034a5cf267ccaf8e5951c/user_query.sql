BEGIN;
INSERT INTO ft2(rowid, content) VALUES(4, 'a b f');
UPDATE ft2 SET docid=5 WHERE docid=4;
UPDATE ft2 SET docid=3 WHERE docid=4;
INSERT INTO ft2(ft2) VALUES('integrity-check');
COMMIT;