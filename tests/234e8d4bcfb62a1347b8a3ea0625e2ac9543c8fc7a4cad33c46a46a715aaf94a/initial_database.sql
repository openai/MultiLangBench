CREATE TABLE t1(a INTEGER PRIMARY KEY, b int, c DEFAULT 0);
CREATE TABLE record(x TEXT, y TEXT);
INSERT INTO t1(a,b,c) VALUES(1,2,1);
CREATE TRIGGER r1 BEFORE INSERT ON t1 BEGIN
  INSERT INTO record(x,y) VALUES('before-insert',format('%d,%d,%d',new.a,new.b,new.c));
END;
CREATE TRIGGER r2 AFTER INSERT ON t1 BEGIN
  INSERT INTO record(x,y) VALUES('after-insert',printf('%d,%d,%d',new.a,new.b,new.c));
END;
CREATE TRIGGER r3 BEFORE UPDATE ON t1 BEGIN
  INSERT INTO record(x,y) VALUES('before-update',format('%d,%d,%d/%d,%d,%d',old.a,old.b,old.c,new.a,new.b,new.c));
END;
CREATE TRIGGER r4 AFTER UPDATE ON t1 BEGIN
  INSERT INTO record(x,y) VALUES('after-update',printf('%d,%d,%d/%d,%d,%d',old.a,old.b,old.c,new.a,new.b,new.c));
END;
INSERT INTO record(x,y) VALUES
 ('before-insert','1,2,0'),
 ('before-update','1,2,0/1,2,1'),
 ('after-update','1,2,0/1,2,1');