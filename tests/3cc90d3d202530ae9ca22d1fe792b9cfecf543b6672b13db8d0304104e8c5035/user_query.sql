CREATE TABLE enc12_4_result(seq INTEGER, x, y, z);
INSERT INTO enc12_4_result SELECT 1, x, y, z FROM t3;
PRAGMA encoding = 'UTF-16le';
INSERT INTO enc12_4_result SELECT 2, x, y, z FROM t3;