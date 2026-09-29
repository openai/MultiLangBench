SELECT DISTINCT pa.id, p.id, a.id
FROM
  pa
  LEFT JOIN p ON p.uid='1234'
  LEFT JOIN a ON a.uid=pa.a_uid AND a.t=p.t
ORDER BY 1, 2, 3;