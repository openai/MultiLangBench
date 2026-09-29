ATTACH DATABASE ':memory:' AS two;
CREATE VIRTUAL TABLE two.t1 USING fts3(content);
INSERT INTO two.t1(rowid, content) VALUES(1, 'hello world');
INSERT INTO two.t1(rowid, content) VALUES(2, 'hello there');
INSERT INTO two.t1(rowid, content) VALUES(3, 'cruel world');
INSERT INTO main.fts3aj_result(matched_rowid)
  SELECT rowid FROM t1 WHERE t1 MATCH 'hello' ORDER BY rowid;
DETACH DATABASE two;