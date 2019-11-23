-- To skip the header and footer from csv file use the below table properties.


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
tblproperties("skip.header.line.count"="1","skip.footer.line.count"="1");



