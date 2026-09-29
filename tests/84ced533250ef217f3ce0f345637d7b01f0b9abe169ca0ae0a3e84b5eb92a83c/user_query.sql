ATTACH ':memory:' AS aux;
PRAGMA aux.auto_vacuum=NONE;
CREATE TABLE aux.t1(a INTEGER, b TEXT, c INTEGER);
CREATE TABLE main.vacuum_modes AS
SELECT (SELECT auto_vacuum FROM pragma_auto_vacuum('main')) AS main_mode,
       (SELECT auto_vacuum FROM pragma_auto_vacuum('aux')) AS aux_mode;