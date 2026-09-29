-- in3-5.1
CREATE TABLE Folders(
  folderid INTEGER PRIMARY KEY,
  parentid INTEGER,
  rootid INTEGER,
  path VARCHAR(255)
);