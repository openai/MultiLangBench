WITH e(value) AS (SELECT * FROM pragma_encoding)
SELECT CASE
         WHEN replace(lower(e.value), '-', '') IN ('utf16le', 'utf16be') THEN 'UTF16'
         ELSE e.value
       END AS encoding_family,
       encoding_probe.x
  FROM e CROSS JOIN encoding_probe;