CREATE TABLE result(seq, sql);
INSERT INTO result(seq, sql) SELECT CASE name WHEN 't1' THEN 1 WHEN 't2' THEN 2 WHEN 't2expr' THEN 3 END, sql FROM sqlite_master WHERE name IN ('t1','t2','t2expr');