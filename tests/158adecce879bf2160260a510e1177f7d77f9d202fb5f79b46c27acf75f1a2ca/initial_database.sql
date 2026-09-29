CREATE TABLE artists (
  id integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  name varchar(255)
);
CREATE TABLE albums (
  id integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  name varchar(255),
  artist_id integer REFERENCES artists
);
INSERT INTO artists (name) VALUES ('Ar');
INSERT INTO albums (name, artist_id) VALUES ('Al', 1);