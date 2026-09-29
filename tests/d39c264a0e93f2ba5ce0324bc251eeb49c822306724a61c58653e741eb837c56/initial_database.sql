CREATE VIRTUAL TABLE t2 USING fts3tokenize();
CREATE TABLE result(input, token, start_offset, end_offset, position);