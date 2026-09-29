CREATE VIRTUAL TABLE "abc '!' def" USING fts4(x, y);
INSERT INTO "abc '!' def" VALUES('XX', 'YY');