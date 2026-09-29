PRAGMA foreign_keys=ON;
CREATE TABLE "xx1"("xx2" TEXT PRIMARY KEY, "xx3" TEXT);
INSERT INTO "xx1"("xx2","xx3") VALUES('abc','def');
CREATE TABLE "xx4"("xx5" TEXT REFERENCES "xx1" ON DELETE CASCADE);
INSERT INTO "xx4"("xx5") VALUES('abc');
INSERT INTO "xx1"("xx2","xx3") VALUES('uvw','xyz');
CREATE TABLE sfi_observed AS SELECT 1 AS step, "xx5" AS value FROM "xx4";
DELETE FROM "xx1";
INSERT INTO sfi_observed SELECT 2, "xx5" FROM "xx4";