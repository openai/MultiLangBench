PRAGMA cache_size = 10;
INSERT INTO result(value) SELECT sum(length(c2)) FROM t1;