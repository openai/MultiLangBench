ATTACH ':memory:' AS aux;
CREATE TABLE aux.t1(a, b);
CREATE TABLE aux.mmm(x, y);
INSERT INTO aux.mmm VALUES(1, 'ONE');
INSERT INTO aux.mmm VALUES(2, 'TWO');
INSERT INTO aux.mmm VALUES(3, 'THREE');
CREATE TRIGGER aux.ttt AFTER INSERT ON t1 BEGIN
  UPDATE t1 SET b=y FROM mmm WHERE x=new.a AND a=new.a;
END;
INSERT INTO aux.t1(a) VALUES (2);
INSERT INTO main.observed SELECT a, b FROM aux.t1;
DETACH aux;