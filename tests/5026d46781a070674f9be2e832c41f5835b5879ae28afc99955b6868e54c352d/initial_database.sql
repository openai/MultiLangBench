CREATE TABLE parameters2(
  mountcnt INT NOT NULL CHECK (typeof(mountcnt) == 'integer'),
  version REAL CHECK (typeof(version) == 'real')
);
INSERT INTO parameters2(mountcnt, version) VALUES(1, 1.0);