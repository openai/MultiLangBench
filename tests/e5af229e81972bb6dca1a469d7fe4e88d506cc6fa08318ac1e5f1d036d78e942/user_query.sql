PRAGMA legacy_alter_table = 1;
BEGIN;
INSERT INTO fff VALUES('a', 'b', 'c');
ALTER TABLE fff RENAME TO ggg;
COMMIT;