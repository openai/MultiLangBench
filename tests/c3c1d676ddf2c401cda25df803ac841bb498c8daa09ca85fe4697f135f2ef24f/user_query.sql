CREATE TABLE query_result AS
SELECT cor1.*
  FROM tab4 AS cor0
  JOIN tab4 AS cor1 USING (col4, col3, col2, col1, col0);