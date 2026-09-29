CREATE TABLE map(k, v);
INSERT INTO map VALUES('b', 'twelve');
INSERT INTO map VALUES('d', 'fourteen');
UPDATE v1 SET a=map.v FROM map WHERE v1.k=map.k;