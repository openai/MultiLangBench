CREATE TABLE sfi_result AS
SELECT x FROM t1 WHERE a='abcdefg' OR c=instr('abcdefg',b) ORDER BY +x;