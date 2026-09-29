CREATE TABLE t2a(a integer, b, PRIMARY KEY(a));
CREATE TABLE t2b("a" integer, b, PRIMARY KEY("a"));
CREATE TABLE t2c([a] integer, b, PRIMARY KEY([a]));
CREATE TABLE t2d('a' integer, b, PRIMARY KEY('a'));