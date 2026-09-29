CREATE VIRTUAL TABLE temp.aux1 USING fts4aux(main, ft1);
CREATE TABLE main._sfi_result AS SELECT * FROM temp.aux1 WHERE term>='y';