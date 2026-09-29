CREATE TABLE forumpost(
  fpid INTEGER PRIMARY KEY,
  froot INT,
  fprev INT,
  firt INT,
  fmtime REAL
);
CREATE INDEX forumthread ON forumpost(froot,fmtime);
CREATE TABLE blob(
  rid INTEGER PRIMARY KEY,
  rcvid INTEGER,
  size INTEGER,
  uuid TEXT UNIQUE NOT NULL,
  content BLOB,
  CHECK( length(uuid)>=40 AND rid>0 )
);
CREATE TABLE event(
  type TEXT,
  mtime DATETIME,
  objid INTEGER PRIMARY KEY,
  tagid INTEGER,
  uid INTEGER REFERENCES user,
  bgcolor TEXT,
  euser TEXT,
  user TEXT,
  ecomment TEXT,
  comment TEXT,
  brief TEXT,
  omtime DATETIME
);
CREATE INDEX event_i1 ON event(mtime);
CREATE TABLE private(rid INTEGER PRIMARY KEY);