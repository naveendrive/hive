-- EXTERNAL TABLE
-- Use the below command to create EXTERNAL table
-- Download 'SalesJan2009.csv' from DATA folder.

CREATE TABLE sales_ext (Transaction_date String,
	Product String,
	Price Double,
	Payment_Type String,
	Name String,
	City String,
	State String,
	Country String,
	Account_Created String,
	Last_Login String,
	Latitude Double,
	Longitude Double)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/user/training/sales/'
tblproperties("skip.header.line.count"="1");

-- If LOCATION is not mentioned in the above query, HIVE will create the directory in HIVE's default location ('/user/hive/warehouse')
-- If LOCATION is mentioned and if the directory is not present in the mentioned location HIVE will create the new directory in the location mentioned in command.
-- In the LOCATION command we should always mention the directory path instead of actual file path, HIVE will read the all the files under mentioned directory.
-- To skip the first line of the file set the table property ("skip.header.line.count"="1"). Refer last line.


-- Check if the table is created
SHOW TABLES;

-- Check the schema of the table
DESCRIBE sales_ext;

-- Check the table content using below command
-- The below command will not launch mappers and reducers
SELECT * FROM sales_ext LIMIT 5;

-- Drop INERNAL table
-- Note, when you drop the external table, HIVE will delete only metadata of the table and the data remains in the same location.
DROP TABLE sales_ext;
