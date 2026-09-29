CREATE TABLE offsets_result AS
SELECT rowid AS docid, offsets(x1) AS off
FROM x1
WHERE x1 MATCH 'a OR b AND c NEAR d';