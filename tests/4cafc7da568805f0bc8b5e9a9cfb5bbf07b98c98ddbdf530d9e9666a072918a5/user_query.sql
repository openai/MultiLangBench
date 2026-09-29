ATTACH ':memory:' AS aux;
CREATE TABLE aux.t3(x, y);
INSERT INTO aux.t3 VALUES('x', 'y');
CREATE TABLE main.aux_snapshot AS SELECT x, y FROM aux.t3;
DETACH aux;