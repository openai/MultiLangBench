CREATE TEMP TRIGGER AFTER INSERT ON x1 BEGIN
  UPDATE x1 SET two=new.three || "new" WHERE one=new.one||"";
END;
ALTER TABLE x1 RENAME two TO 'four';
CREATE TABLE __temp_trigger_sql(sql TEXT);
INSERT INTO __temp_trigger_sql(sql)
  SELECT sql FROM sqlite_temp_schema WHERE type='trigger' AND name='AFTER';