SELECT count(*) FROM t1_segments WHERE length(block)>10000;
UPDATE t1_segments SET block=zeroblob(length(block)) WHERE length(block)>10000;