ATTACH DATABASE (SELECT file FROM pragma_database_list WHERE name='main') AS two;
CREATE VIRTUAL TABLE two.t3 USING fts3(content);
INSERT INTO two.t3(rowid, content) VALUES(2, 'hello there');
INSERT INTO two.t3(rowid, content) VALUES(3, 'cruel world');
DETACH DATABASE two;