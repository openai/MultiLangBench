CREATE TABLE sfi_result AS
SELECT count(*) AS n FROM x1_rules WHERE cTo!=cFrom;