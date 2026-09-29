PRAGMA table_info="""1";
CREATE TABLE sfi_observed AS
SELECT cid, name, type, "notnull" AS nn, dflt_value, pk
FROM pragma_table_info('"1');