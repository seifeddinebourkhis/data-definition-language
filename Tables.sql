CREATE TABLE Customer(
    Customer_id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel number
);

CREATE TABLE Product(
    Product_id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR (20) NOT NULL,
    Price number CHECK (Price>0)
);

CREATE TABLE Orders (
	CONSTRAINT fk_Orders1 FOREIGN KEY (customer_ID) REFERENCES Customer (customer_ID),
	CONSTRAINT fk_Orders2 FOREIGN KEY (product_ID) REFERENCES Product (product_ID),
    quantity NUMBER,
	total_Amount NUMBER,
);

ALTER TABLE Product ADD Category VARCHAR2(20);

	ALTER TABLE Orders ADD Order_Date DATE DEFAULT SYSDATE();