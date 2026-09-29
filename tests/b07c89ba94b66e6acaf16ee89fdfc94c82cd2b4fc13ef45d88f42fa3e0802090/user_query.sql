CREATE TABLE map2(o1, o2, n1, n2);
INSERT INTO map2 VALUES (10, 10, 50, 50), (10, 11, 50, 60), (11, 10, 60, 50), (11, 11, 60, 60);
UPDATE u1 SET b=n1, c=n2 FROM map2 WHERE b=o1 AND c=o2;