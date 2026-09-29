CREATE VIRTUAL TABLE t1 USING fts3tokenize(simple);
CREATE TABLE c1(x);
INSERT INTO c1(x) VALUES('a b c');
INSERT INTO c1(x) VALUES('d e f');
CREATE TABLE result(cx, input, token, start_offset, end_offset, position);