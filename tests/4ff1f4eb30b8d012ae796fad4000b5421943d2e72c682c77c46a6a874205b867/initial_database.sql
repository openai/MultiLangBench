CREATE VIRTUAL TABLE t1 USING fts3(content);
INSERT INTO t1(rowid, content) VALUES(1, 'hello world');
INSERT INTO t1(rowid, content) VALUES(2, 'hello there');
INSERT INTO t1(rowid, content) VALUES(3, 'cruel world');
CREATE VIRTUAL TABLE t2 USING fts3(content);
INSERT INTO t2(rowid, content) VALUES(1, 'hello world');
INSERT INTO t2(rowid, content) VALUES(2, 'hello there');
INSERT INTO t2(rowid, content) VALUES(3, 'cruel world');