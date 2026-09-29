PRAGMA writable_schema = 1;
UPDATE sqlite_master SET sql = 'CREATE INDEX t2a ON t2(a)' WHERE name='t2a';