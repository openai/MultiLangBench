CREATE VIRTUAL TABLE t1 USING fts3tokenize(simple);
CREATE TABLE result(input, token, start_offset, end_offset, position);