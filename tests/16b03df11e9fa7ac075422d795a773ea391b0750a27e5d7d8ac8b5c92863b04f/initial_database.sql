CREATE TABLE t4(x,y);
WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<160) INSERT INTO t4 SELECT x, 2*((x-1)%10+1) FROM c;
UPDATE t4 SET y='lots of data for the row where x=' || x || ' and y=' || y || ' - even more data to fill space';