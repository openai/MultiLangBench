CREATE TABLE person(pid INT);
CREATE UNIQUE INDEX idx ON person(pid) WHERE pid == 1;
INSERT INTO person VALUES (1), (10), (10);