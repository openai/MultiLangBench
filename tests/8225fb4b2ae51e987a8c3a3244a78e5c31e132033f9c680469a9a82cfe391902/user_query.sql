CREATE VIRTUAL TABLE "abc '!' def" USING fts4(x, y);
INSERT INTO "abc '!' def" VALUES('XX', 'YY');
CREATE VIRTUAL TABLE terms3 USING fts4aux("abc '!' def");
CREATE TABLE _sfi_result AS SELECT * FROM terms3;