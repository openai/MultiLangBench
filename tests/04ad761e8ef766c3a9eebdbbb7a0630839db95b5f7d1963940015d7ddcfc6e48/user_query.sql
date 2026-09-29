CREATE TABLE x1(
      one, two, three, PRIMARY KEY(one), 
      CHECK (three!="xyz"), CHECK (two!="one")
  ) WITHOUT ROWID;
CREATE INDEX x1i ON x1(one+"two"+"four") WHERE "five";
CREATE TEMP TRIGGER AFTER INSERT ON x1 BEGIN
  UPDATE x1 SET two=new.three || "new" WHERE one=new.one||"";
END;
CREATE TABLE __temp_trigger_sql(sql TEXT);
INSERT INTO __temp_trigger_sql(sql)
  SELECT sql FROM sqlite_temp_schema WHERE type='trigger' AND name='AFTER';