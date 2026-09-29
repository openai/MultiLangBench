CREATE TABLE [Beginnings] (
  [Id] INTEGER PRIMARY KEY AUTOINCREMENT, [Title] TEXT, [EndingId] INTEGER
);
CREATE TABLE [Endings] (Id INT, Title TEXT, EndingId INT);
INSERT INTO Beginnings (Id, Title, EndingId) VALUES (1, 'FACTOR', 18);
INSERT INTO Beginnings (Id, Title, EndingId) VALUES (2, 'SWIMM', 18);
INSERT INTO Endings (Id, Title, EndingId) VALUES (1, 'ING', 18);