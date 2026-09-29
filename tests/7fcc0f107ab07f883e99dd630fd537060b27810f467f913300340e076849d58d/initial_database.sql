CREATE TABLE parameters1(
  mountcnt INT NOT NULL CHECK (typeof(mountcnt) == 'integer'),
  version REAL NOT NULL
);
INSERT INTO parameters1(mountcnt, version) VALUES(1, 1.0);