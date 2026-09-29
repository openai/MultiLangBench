CREATE TABLE map(k, v);
INSERT INTO map VALUES(1, 'one'), (2, 'two'), (3, 'three'), (4, 'four');
CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
CREATE TRIGGER tr AFTER INSERT ON t1 BEGIN
  UPDATE t1 SET c = v FROM map WHERE k=new.a AND a=new.a;
END;
INSERT INTO t1(a) VALUES(1);