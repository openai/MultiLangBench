CREATE TABLE sfi_result AS
SELECT cTo FROM x1_rules WHERE cFrom='xx'
ORDER BY cost ASC, rowid ASC LIMIT 9;