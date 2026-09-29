ALTER TABLE t7 RENAME TO t8;
SELECT count(*) FROM sqlite_master WHERE name LIKE 't7%';
SELECT count(*) FROM sqlite_master WHERE name LIKE 't8%';