CREATE TABLE excluded(a INT, b INT, c INT DEFAULT 0);
CREATE UNIQUE INDEX excludedab ON excluded(a,b);
INSERT INTO excluded(a,b,c) VALUES(1,2,2),(3,4,1),(5,6,0);