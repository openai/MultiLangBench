CREATE TABLE InventoryControl (
  InventoryControlId INTEGER PRIMARY KEY AUTOINCREMENT,
  SKU INTEGER NOT NULL,
  Variant INTEGER NOT NULL DEFAULT 0,
  ControlDate DATE NOT NULL,
  ControlState INTEGER NOT NULL DEFAULT -1,
  DeliveredQty VARCHAR(30)
);
CREATE TRIGGER TGR_InventoryControl_AfterInsert
AFTER INSERT ON InventoryControl
FOR EACH ROW WHEN NEW.ControlState=-1 BEGIN
  INSERT OR REPLACE INTO InventoryControl(
    InventoryControlId,SKU,Variant,ControlDate,ControlState,DeliveredQty
  ) SELECT
    T1.InventoryControlId AS InventoryControlId,
    T1.SKU AS SKU,
    T1.Variant AS Variant,
    T1.ControlDate AS ControlDate,
    1 AS ControlState,
    COALESCE(T2.DeliveredQty,0) AS DeliveredQty
  FROM (
    SELECT
      NEW.InventoryControlId AS InventoryControlId,
      II.SKU AS SKU,
      II.Variant AS Variant,
      COALESCE(LastClosedIC.ControlDate,NEW.ControlDate) AS ControlDate
    FROM InventoryItem II
    LEFT JOIN InventoryControl LastClosedIC
      ON LastClosedIC.InventoryControlId IN (SELECT 99999)
    WHERE II.SKU=NEW.SKU AND II.Variant=NEW.Variant
  ) T1
  LEFT JOIN (
    SELECT TD.SKU AS SKU, TD.Variant AS Variant, 10 AS DeliveredQty
    FROM TransactionDetail TD
    WHERE TD.SKU=NEW.SKU AND TD.Variant=NEW.Variant
  ) T2
  ON T2.SKU=T1.SKU AND T2.Variant=T1.Variant;
END;
CREATE TABLE InventoryItem (
  SKU INTEGER NOT NULL,
  Variant INTEGER NOT NULL DEFAULT 0,
  DeptCode INTEGER NOT NULL,
  GroupCode INTEGER NOT NULL,
  ItemDescription VARCHAR(120) NOT NULL,
  PRIMARY KEY(SKU, Variant)
);
INSERT INTO InventoryItem VALUES(220,0,1,170,'Scoth Tampon Recurer');
INSERT INTO InventoryItem VALUES(31,0,1,110,'Fromage');
CREATE TABLE TransactionDetail (
  TransactionId INTEGER NOT NULL,
  SKU INTEGER NOT NULL,
  Variant INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY(TransactionId, SKU, Variant)
);
INSERT INTO TransactionDetail(TransactionId, SKU, Variant) VALUES(44, 31, 0);
INSERT INTO InventoryControl(SKU, Variant, ControlDate)
SELECT II.SKU, II.Variant, '2011-08-30' FROM InventoryItem II;