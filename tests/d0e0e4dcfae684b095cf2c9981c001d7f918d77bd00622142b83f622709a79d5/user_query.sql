PRAGMA legacy_alter_table = 1;
CREATE TABLE t1(a, b, CHECK(t1.a != t1.b));
CREATE TABLE t2(a, b);
CREATE INDEX t2expr ON t2(a) WHERE t2.b>0;