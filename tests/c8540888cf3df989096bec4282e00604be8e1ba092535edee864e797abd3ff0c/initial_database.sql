CREATE TABLE tab1 (t1_id integer PRIMARY KEY, t1_desc);
INSERT INTO tab1 VALUES(1,'rec 1 tab 1');
CREATE TABLE tab2 (t2_id integer PRIMARY KEY, t2_id_t1, t2_desc);
INSERT INTO tab2 VALUES(1,1,'rec 1 tab 2');
CREATE TABLE tab3 (t3_id integer PRIMARY KEY, t3_id_t2, t3_desc);
INSERT INTO tab3 VALUES(1,1,'aa');