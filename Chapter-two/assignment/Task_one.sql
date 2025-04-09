-- Question 2.17
SELECT SKU, SKU_Description FROM inventory;
-- Question 2.18
SELECT SKU_Description, SKU FROM inventory;
-- Question 2.19
SELECT WarehouseID FROM inventory;
-- Question 2.20
SELECT DISTINCT WarehouseID FROM inventory;
-- Question 2.21
SELECT WarehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder From inventory;
-- Question 2.22
SELECT * FROM inventory;
-- Question 2.23 
SELECT * 
FROM inventory
WHERE QuantityOnHand > 0;
-- Question 2.24
SELECT SKU, SKU_Description FROM inventory WHERE QuantityOnHand = 0;
-- Question 2.25
SELECT SKU, SKU_Description, WarehouseID 
FROM inventory 
WHERE QuantityOnHand = 0
ORDER BY WarehouseID asc;

-- Question 2.26
SELECT SKU, SKU_Description, WarehouseID 
FROM inventory 
WHERE QuantityOnHand > 0
ORDER BY WarehouseID desc, SKU asc;

-- Question 2.27
SELECT SKU, SKU_Description, WarehouseID 
FROM inventory 
WHERE QuantityOnHand = 0 OR QuantityOnOrder > 0
ORDER BY WarehouseID desc, SKU asc;

-- Question 2.28
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM inventory 
WHERE QuantityOnHand = 0 OR QuantityOnOrder = 0
ORDER BY WarehouseID desc, SKU asc;

--  Question 2.29
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand 
FROM inventory 
WHERE QuantityOnHand > 1 and QuantityOnHand < 10;

-- Question 2.30
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand 
FROM inventory 
WHERE QuantityOnHand between 2 and 9;

-- Question 2.31
SELECT DISTINCT SKU, SKU_Description FROM Inventory 
WHERE SKU_Description LIKE Half_Dome;
