CREATE TABLE nodes(
  local_relpath TEXT PRIMARY KEY,
  moved_to TEXT
);
INSERT INTO nodes VALUES('A',NULL);
INSERT INTO nodes VALUES('A/B',NULL);
INSERT INTO nodes VALUES('',NULL);
INSERT INTO nodes VALUES('A/B/C-move',NULL);
INSERT INTO nodes VALUES('A/B/C','A/B/C-move');
INSERT INTO nodes VALUES('A/B-move',NULL);
INSERT INTO nodes VALUES('A/B-move/C-move',NULL);
INSERT INTO nodes VALUES('A/B-move/C','x');