CREATE TABLE sfi_result AS
SELECT x FROM t1 WHERE c=instr('abcdefg',b) OR a='abcdefg' ORDER BY +x;