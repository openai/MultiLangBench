CREATE TABLE real(x, y, z);
CREATE VIEW t1 AS SELECT * FROM real;
CREATE TRIGGER t1_insert INSTEAD OF INSERT ON t1 BEGIN
  INSERT INTO real VALUES(new.x, new.y, new.z);
END;
CREATE TRIGGER t1_update INSTEAD OF UPDATE ON t1 BEGIN
  INSERT INTO log VALUES(old.z || '->' || new.z);
  UPDATE real SET y=new.y, z=new.z WHERE x=old.x;
END;