CREATE TABLE blobs (k INTEGER PRIMARY KEY, v BLOB);
PRAGMA cache_size = 100;
INSERT INTO blobs VALUES(1, CAST(replace(hex(zeroblob(625)), '00', '0123456789abcdef') AS BLOB));
INSERT INTO blobs VALUES(2, CAST(replace(hex(zeroblob(6250)), '00', '0123456789abcdef') AS BLOB));