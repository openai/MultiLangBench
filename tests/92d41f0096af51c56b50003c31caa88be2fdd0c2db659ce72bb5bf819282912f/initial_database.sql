CREATE VIRTUAL TABLE t3 USING fts3tokenize(simple, '', 'xyz ');
CREATE TABLE result(seq INTEGER PRIMARY KEY, token);