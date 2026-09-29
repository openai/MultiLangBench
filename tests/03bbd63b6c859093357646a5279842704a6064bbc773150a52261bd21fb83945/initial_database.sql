-- sqllimits1-5.17.2
CREATE TABLE source(v TEXT);
INSERT INTO source(v) VALUES(replace(hex(zeroblob(100000)),'00','A'));