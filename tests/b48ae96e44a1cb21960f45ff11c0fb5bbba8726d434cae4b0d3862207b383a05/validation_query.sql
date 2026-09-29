WITH data(src, seq, value) AS (
  SELECT 'Instances', instanceId, quote(instanceId) || '|' || quote(troveName) || '|' || quote(versionId) || '|' || quote(flavorId) || '|' || quote(timeStamps) || '|' || quote(isPresent) || '|' || quote(pinned) FROM Instances
  UNION ALL
  SELECT 'Versions', versionId, quote(versionId) || '|' || quote(version) FROM Versions
  UNION ALL
  SELECT 'Flavors', flavorId, quote(flavorId) || '|' || quote(flavor) FROM Flavors
  UNION ALL
  SELECT 'tlList', row, quote(row) || '|' || quote(name) || '|' || quote(version) || '|' || quote(flavor) FROM tlList_snapshot
)
SELECT src, seq, value FROM data ORDER BY src, seq;