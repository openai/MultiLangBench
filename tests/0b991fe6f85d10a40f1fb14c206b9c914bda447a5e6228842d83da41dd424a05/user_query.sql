CREATE UNIQUE INDEX PermissionsIdx ON Permissions(userGroupId, labelId, itemId);
CREATE TABLE sfi_result AS
SELECT DISTINCT
  Items.Item AS trove,
  UP.pattern AS pattern
FROM
  (
    SELECT
      Permissions.labelId AS labelId,
      PerItems.item AS pattern
    FROM
      Users,
      UserGroupMembers,
      Permissions
      LEFT OUTER JOIN Items AS PerItems
        ON Permissions.itemId = PerItems.itemId
    WHERE
      Users.user = 'limited'
      AND Users.userId = UserGroupMembers.userId
      AND UserGroupMembers.userGroupId = Permissions.userGroupId
  ) AS UP
  JOIN LabelMap ON (UP.labelId = 0 OR UP.labelId = LabelMap.labelId),
  Labels,
  Items
WHERE
  Labels.label = 'localhost@rpl:branch'
  AND Labels.labelId = LabelMap.labelId
  AND LabelMap.itemId = Items.itemId
ORDER BY +trove, +pattern;