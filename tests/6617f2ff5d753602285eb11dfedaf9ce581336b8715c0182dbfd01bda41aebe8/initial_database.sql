CREATE VIRTUAL TABLE ft USING fts3(x);
BEGIN;
INSERT INTO ft VALUES('a one'), ('b one'), ('c one');
COMMIT;