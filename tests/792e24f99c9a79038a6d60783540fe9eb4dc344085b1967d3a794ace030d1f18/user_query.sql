CREATE TABLE result AS
SELECT table2.x AS x,
       (SELECT group_concat(list.value)
          FROM list
         WHERE list.key = table2.key) AS values_concat
  FROM table2;