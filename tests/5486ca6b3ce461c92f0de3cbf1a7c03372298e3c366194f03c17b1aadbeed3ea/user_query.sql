CREATE VIRTUAL TABLE "%%^^%%" USING fts4aux('abc ''!'' def');
CREATE TABLE _sfi_result AS SELECT * FROM "%%^^%%";