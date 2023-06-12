CREATE DATABASE CZK_BANK_ANALYSIS;

USE CZK_BANK_ANALYSIS;

CREATE OR REPLACE TABLE DISTRICT
(
District_Code INT PRIMARY KEY,
District_Name VARCHAR(50),
Region VARCHAR(50),
No_of_inhabitants INT,
No_of_municipalities_with_inhabitants_less_499 INT,
No_of_municipalities_with_inhabitants_500_btw_1999	INT,
No_of_municipalities_with_inhabitants_2000_btw_9999	INT,
No_of_municipalities_with_inhabitants_less_10000 INT,	
No_of_cities INT,
Ratio_of_urban_inhabitants DECIMAL(10, 2),
Average_salary INT,
No_of_entrepreneurs_per_1000_inhabitants INT,
No_committed_crime_2017	INT,
No_committed_crime_2018 INT
);

CREATE OR REPLACE TABLE ACCOUNT
(
account_id INT PRIMARY KEY,
district_id	INT,
frequency VARCHAR(50),
Date DATE,
Account_Type VARCHAR(50),
Card_Assigned VARCHAR(50),
FOREIGN KEY (district_id) references DISTRICT(District_Code) 
);

CREATE OR REPLACE TABLE CARD
(
card_id	INT PRIMARY KEY,
disp_id	INT,
type CHAR(10),
issued DATE,
FOREIGN KEY (disp_id) references DISPOSITION(disp_id)
);

CREATE OR REPLACE TABLE CLIENT
(
client_id INT PRIMARY KEY,
Sex	CHAR(10),
Birth_date	DATE,
district_id INT,
FOREIGN KEY (district_id) references DISTRICT(District_Code) 
);

CREATE OR REPLACE TABLE DISPOSITION
(
disp_id	INT PRIMARY KEY,
client_id INT,
account_id INT,
type VARCHAR(15),
FOREIGN KEY (account_id) references ACCOUNT(account_id),
FOREIGN KEY (client_id) references CLIENT(client_id)
);

CREATE OR REPLACE TABLE LOAN
(
loan_id	INT,
account_id INT,
Date DATE,
amount INT,
duration INT,
payments INT,
status VARCHAR(50),
FOREIGN KEY (account_id) references ACCOUNT(account_id)
);

CREATE OR REPLACE TABLE ORDER_TABLE
(
order_id INT PRIMARY KEY,
account_id INT,
bank_to	VARCHAR(50),
account_to INT,
amount FLOAT,
FOREIGN KEY (account_id) references ACCOUNT(account_id)
);

CREATE OR REPLACE TABLE TRANSACTIONS
(
trans_id INT,	
account_id INT,
Date DATE,
Type VARCHAR(30),
operation VARCHAR(40),
amount	INT,
balance	FLOAT,
Purpose	VARCHAR(40),
bank VARCHAR(50),
account_partner_id INT,
FOREIGN KEY (account_id) references ACCOUNT(account_id)
);

SELECT * FROM DISTRICT;
SELECT * FROM ACCOUNT;
SELECT * FROM CARD;
SELECT * FROM CLIENT;
SELECT * FROM DISPOSITION;
SELECT * FROM LOAN;
SELECT * FROM ORDER_TABLE;
SELECT * FROM TRANSACTIONS;


