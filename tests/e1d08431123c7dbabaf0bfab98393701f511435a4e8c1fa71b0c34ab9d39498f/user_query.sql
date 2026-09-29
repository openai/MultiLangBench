PRAGMA foreign_keys=ON;
CREATE TABLE """1"("""2" TEXT PRIMARY KEY, """3" TEXT);
INSERT INTO """1"("""2","""3") VALUES('abc','def');
CREATE TABLE """4"("""5" TEXT REFERENCES """1" ON DELETE CASCADE);
INSERT INTO """4"("""5") VALUES('abc');
INSERT INTO """1"("""2","""3") VALUES('uvw','xyz');
CREATE TABLE sfi_observed AS SELECT 1 AS step, """5" AS value FROM """4";
DELETE FROM """1";
INSERT INTO sfi_observed SELECT 2, """5" FROM """4";