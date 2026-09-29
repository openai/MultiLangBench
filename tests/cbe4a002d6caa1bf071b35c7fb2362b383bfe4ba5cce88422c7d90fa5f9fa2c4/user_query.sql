CREATE TABLE t4(a DEFAULT 'abc' /* comment */, b DEFAULT -1 -- comment
, c DEFAULT +4.0 /* another comment */); PRAGMA table_info = t4;