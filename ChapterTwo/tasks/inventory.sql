-- STATEMENT to display SKU & SKU_DESCRIPTION
-- SELECT SKU, SKU_DESCRIPTION FROM INVENTORY;  

-- STATEMENT TO DISPLAY SKU_DESCRIPTION & SKU 
-- SELECT SKU_DESCRIPTION, SKU FROM INVENTORY;

-- STATEMENT TO DISPLAY WAREHOUSEID
-- SELECT WarehouseId FROM INVENTORY;


-- DISPLAY UNIQUE WAREHOUSE IDS
-- SELECT DISTINCT WarehouseId FROM INVENTORY;

-- DISPLAY ALL COLUMNS WITHOUT *
-- SELECT WarehouseID, SKU_Description, QuantityOnHand, QuantityOnOrder FROM INVENTORY

-- DISPLAY ALL COLUMNS WITH * 
-- SELECT * FROM INVENTORY

-- DISPLAY ALL DATA ON PRODUCTS HAVING A QUANTITYONHAND GREATER THAN 0
-- SELECT QuantityOnHand FROM INVENTORY WHERE  QuantityOnHand > 0


-- DISPLAY SKU, SKU_Description FOR PRODUCTS HAVING QUANTITYONHAND EQUAL TO 0 
-- SELECT SKU, SKU_Description FROM INVENTORY WHERE QuantityOnHand = 0;

-- DISPLAY SKU, SKU_Description, WAREHOUSEID FOR PRODUCTS HAVING QUANTITYONHAND EQUAL TO 0, SORT IN ASCENDING ORDER ORDER BY WAREHOUSEID
-- SELECT SKU, SKU_Description FROM INVENTORY WHERE QuantityOnHand = 0 ORDER BY WarehouseID ASC


-- DISPLAY SKU, SKU_Description, WAREHOUSEID FOR PRODUCTS HAVING QUANTITYONHAND EQUAL TO 0, SORT IN ASCENDING ORDER ORDER BY WAREHOUSEID
-- SELECT SKU, SKU_Description FROM INVENTORY WHERE QuantityOnHand > 0 ORDER BY WarehouseID DESC

-- Display SKU, SKU_Description, and WarehouseID for all products that have a QuantityOnHand equal to 0 or a QuantityOnOrder equal to 0. Sort the results in descending order by WarehouseID and in ascending order by SKU. 
-- SELECT SKU, SKU_Description, WarehouseId FROM INVENTORY WHERE QuantityOnHand = 0 OR  QuantityOnOrder = 0 ORDER BY WarehouseId DESC, SKU ASC;
 
-- Display the SKU, SKU_Description, WarehouseID, and QuantityOnHand for all products having a QuantityOnHand greater than 1 and less than 10. Do not use the BETWEEN keyword.
-- SELECT SKU, SKU_Description, WarehouseId, QuantityOnHand FROM INVENTORY WHERE QuantityOnHand > 1 AND QuantityOnHand < 10;
 
-- Display SKU, SKU_Description, WarehouseID, and QuantityOnHand for all products having a QuantityOnHand greater than 1 and less than 10. Use the BETWEEN keyword. 
-- SELECT SKU, SKU_Description, WarehouseId, QuantityOnHand FROM INVENTORY WHERE QuantityOnHand BETWEEN 2 AND 9; 

-- Write an SQL statement to show a unique SKU and SKU_Description for all products with any SKU description starting with ‘Half-Dome’.
-- SELECT DISTINCT SKU, SKU_Description FROM INVENTORY WHERE SKU_Description LIKE "Half-Dome%";

-- Write an SQL statement to show a unique SKU and SKU_Description for all products with a description that includes the word ‘Climb’.
-- SELECT DISTINCT SKU, SKU_Description FROM INVENTORY WHERE SKU_Description LIKE "Climb%";

-- Write an SQL statement to show a unique SKU and SKU_Description for all products with a ‘d’ in the third position from the left in SKU_Description.
-- SELECT DISTINCT SKU, SKU_Description FROM INVENTORY WHERE SKU_Description LIKE "__d%";

-- Write an SQL statement that uses all of the SQL built-in functions on the QuantityOnHand column. Include meaningful column names in the result.
-- SELECT SUM(QuantityOnHand) AS TotalQuantity, AVG(QuantityOnHand) AS AverageQuantity, MIN(QuantityOnHand) AS MinimumQuantity, MAX(QuantityOnHand) AS MaximumQuantity, COUNT(QuantityOnHand) AS CountOfItems FROM INVENTORY; 
 
-- Explain the difference between the SQL built-in functions COUNT and SUM
-- Count tells how many items of rows exist and sum tells the total items when added together

-- Write an SQL statement to display the WarehouseID and the sum of QuantityOnHand grouped by WarehouseID. Name the sum TotalItemsOnHand and display the results in descending order of TotalItemsOnHand.
-- SELECT WarehouseId, SUM(QuantityOnHand) AS TotalItemsOnHand FROM INVENTORY GROUP BY WarehouseId ORDER BY TotalItemsOnHand DESC;
 
-- Write an SQL statement to display the WarehouseID and the sum of QuantityOnHand grouped by WarehouseID. Omit all SKU items that have three or more items on hand from the sum, name the sum TotalItemsOnHandLT3, and display the results in descending order of TotalItemsOnHandLT3.
-- SELECT WarehouseId, SUM(QuantityOnHand) AS TotalItemsOnHandLT3 FROM INVENTORY WHERE QuantityOnHand < 3 GROUP BY WarehouseId ORDER BY TotalItemsOnHandLT3 DESC;
 
-- Write an SQL statement to display the WarehouseID and the sum of QuantityOnHand grouped by WarehouseID. Omit all SKU items that have three or more items on hand from the sum, and name the sum TotalItemsOnHandLT3. Show the WarehouseID only for warehouses having fewer than two SKUs in their TotalItemsOnHandLT3. Display the results in descending order of TotalItemsOnHandLT3.
-- SELECT WarehouseId, SUM(QuantityOnHand) AS TotalItemsOnHandLT3 FROM INVENTORY WHERE QuantityOnHand < 3 GROUP BY WarehouseId HAVING COUNT(SKU) < 2 ORDER BY TotalItemsOnHandLT3 DESC;
