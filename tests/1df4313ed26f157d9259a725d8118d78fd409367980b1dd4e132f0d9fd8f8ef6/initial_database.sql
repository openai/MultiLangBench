CREATE TABLE blobs (k INTEGER PRIMARY KEY, v BLOB);
PRAGMA cache_size = 100;
INSERT INTO blobs VALUES(1, CAST(replace(hex(zeroblob(625)), '00', '0123456789abcdef') AS BLOB));
INSERT INTO blobs VALUES(2, zeroblob(100000));
CREATE TABLE observed(n INTEGER);