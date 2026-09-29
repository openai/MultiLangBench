BEGIN;
DELETE FROM t1 WHERE rowid%2;
PRAGMA incremental_vacuum(4);
ROLLBACK;