INSERT INTO query_result(SrcWord, Title)
SELECT SrcWord, Beginnings.Title
FROM (SELECT 'FACTORING' AS SrcWord UNION SELECT 'SWIMMING' AS SrcWord)
LEFT JOIN Beginnings
WHERE Beginnings.Id = (
  SELECT BeginningId FROM (
    SELECT SrcWord, B.Id AS BeginningId, B.Title || E.Title AS Connected
    FROM Beginnings B LEFT JOIN Endings E ON B.EndingId=E.EndingId
    WHERE Connected=SrcWord LIMIT 1
  )
);