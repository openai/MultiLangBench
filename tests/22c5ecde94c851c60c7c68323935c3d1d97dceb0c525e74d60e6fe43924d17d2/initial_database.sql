CREATE TABLE txx(a, b, c);
INSERT INTO txx VALUES(1, 2, 3);
CREATE VIEW vvv AS SELECT main.txx.a, txx.b, c FROM txx;
CREATE VIEW uuu AS SELECT main.one.a, one.b, c FROM txx AS one;