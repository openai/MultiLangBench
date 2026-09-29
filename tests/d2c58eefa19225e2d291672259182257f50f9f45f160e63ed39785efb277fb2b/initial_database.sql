CREATE TABLE x1(
      one, two, three, PRIMARY KEY(one), 
      CHECK (three!="xyz"), CHECK (two!="one")
  ) WITHOUT ROWID;
CREATE INDEX x1i ON x1(one+"two"+"four") WHERE "five";