PRAGMA writable_schema = on;
UPDATE sqlite_schema SET sql = 'CREATE INDEX i1 ON t1(b, c, d)', tbl_name = 't1', type = 'index' WHERE name='i1';