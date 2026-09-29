CREATE VIRTUAL TABLE zt USING fts4(a, b);
INSERT INTO zt(rowid, a, b) VALUES(1, 'unus duo', NULL);
INSERT INTO zt(rowid, a, b) VALUES(2, NULL, NULL);