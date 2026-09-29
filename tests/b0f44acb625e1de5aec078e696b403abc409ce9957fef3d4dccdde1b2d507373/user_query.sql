CREATE VIRTUAL TABLE t1 USING fts3tokenize(simple);
CREATE VIRTUAL TABLE t2 USING fts3tokenize();
CREATE VIRTUAL TABLE t3 USING fts3tokenize(simple, '', 'xyz ');