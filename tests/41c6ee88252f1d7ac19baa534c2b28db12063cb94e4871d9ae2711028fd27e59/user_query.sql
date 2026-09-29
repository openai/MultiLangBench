INSERT INTO t3(b) VALUES('Four score and seven years ago');
INSERT INTO result_130(b) SELECT * FROM t3 WHERE t3 MATCH 'this';