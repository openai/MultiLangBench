PRAGMA writable_schema = 1;
INSERT INTO sqlite_master VALUES('trigger', 'tr1', 't1', 0, 'CREATE TRIGGER tr1 AFTER INSERT ON t1 BEGIN INSERT INTO t2 VALUES(?1, ?2); END');
INSERT INTO sqlite_master VALUES('trigger', 'tr2', 't3', 0, 'CREATE TRIGGER tr2 AFTER INSERT ON t3 WHEN ?1 IS NULL BEGIN UPDATE t2 SET c=d WHERE c IS ?2; END');