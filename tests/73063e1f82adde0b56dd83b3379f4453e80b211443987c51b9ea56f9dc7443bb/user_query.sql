CREATE TABLE excluded(a INT, b INT, c INT DEFAULT 0);
CREATE UNIQUE INDEX excludedab ON excluded(a,b);
INSERT INTO excluded(a,b) VALUES(1,2),(1,2),(3,4),(1,2),(5,6),(3,4) ON CONFLICT(b,a) DO UPDATE SET c=excluded.c+1;