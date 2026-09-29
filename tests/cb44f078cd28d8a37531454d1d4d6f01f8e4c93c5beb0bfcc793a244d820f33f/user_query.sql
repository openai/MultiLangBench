CREATE TEMPORARY TABLE tlList(
  row INTEGER PRIMARY KEY,
  name STRING,
  version STRING,
  flavor STRING
);
INSERT INTO tlList VALUES(NULL, 'libhello:script', '/localhost@rpl:linux/0-1-1', '1#x86');
INSERT INTO tlList VALUES(NULL, 'libhello:user', '/localhost@rpl:linux/0-1-1', '1#x86');
INSERT INTO tlList VALUES(NULL, 'libhello:runtime', '/localhost@rpl:linux/0-1-1', '1#x86');
CREATE TABLE query_result AS
SELECT row AS row_value, pinned
FROM tlList, Instances, Versions, Flavors
WHERE Instances.troveName = tlList.name
  AND Versions.version = tlList.version
  AND Instances.versionId = Versions.versionId
  AND (Flavors.flavor = tlList.flavor OR Flavors.flavor IS NULL AND tlList.flavor = '')
  AND Instances.flavorId = Flavors.flavorId
ORDER BY row ASC;