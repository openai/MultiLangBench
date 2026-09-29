PRAGMA foreign_keys=OFF;
DROP TABLE t1;
CREATE TABLE t1(a,b,c AS(1),d, FOREIGN KEY(c,d,b,a,b,d,b,c) REFERENCES t0);