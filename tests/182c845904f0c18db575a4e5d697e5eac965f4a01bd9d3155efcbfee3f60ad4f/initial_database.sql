CREATE VIRTUAL TABLE t3 USING fts3tokenize(simple, '', 'xyz ');
CREATE TABLE result(n);