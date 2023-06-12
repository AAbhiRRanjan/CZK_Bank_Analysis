--  ***********************************************************************
-- DATA LOADING COMPLETE
-- ************************************************************************
-- DATA TRANSFORMATION

--NEXT DATA TRANSFORMATION


-- RUN THIS COMMAND EVERYONE
SELECT * FROM TRANSACTIONS WHERE BANK IS NULL AND YEAR(DATE) = '2016';

SELECT YEAR(DATE) AS TAXN_YEAR, COUNT(*) AS TOTAL_TAXN
FROM TRANSACTIONS
WHERE BANK IS NULL
GROUP BY 1
ORDER BY 1 DESC;

/*
 CONVERT 2021 TXN_YEAR TO 2022
 CONVERT 2020 TXN_YEAR TO 2021
 CONVERT 2018 TXN_YEAR TO 2020
 CONVERT 2017 TXN_YEAR TO 2019
 CONVERT 2016 TXN_YEAR TO 2018
*/;

UPDATE TRANSACTIONS
SET DATE = DATEADD(YEAR,1, DATE)
WHERE YEAR(DATE) = 2021;

UPDATE TRANSACTIONS
SET DATE = DATEADD(YEAR,1, DATE)
WHERE YEAR(DATE) = 2020;

UPDATE TRANSACTIONS
SET DATE = DATEADD(YEAR,1, DATE)
WHERE YEAR(DATE) = 2019;

UPDATE TRANSACTIONS
SET DATE = DATEADD(YEAR,1, DATE)
WHERE YEAR(DATE) = 2018;

UPDATE TRANSACTIONS
SET DATE = DATEADD(YEAR,1, DATE)
WHERE YEAR(DATE) = 2017;

UPDATE TRANSACTIONS
SET DATE = DATEADD(YEAR,1, DATE)
WHERE YEAR(DATE) = 2016;

SELECT MIN(DATE), MAX(DATE) FROM TRANSACTIONS;

SELECT * FROM TRANSACTIONS WHERE BANK IS NULL;

SELECT COUNT(*) FROM TRANSACTIONS WHERE BANK IS NULL;

SELECT * FROM TRANSACTIONS WHERE BANK IS NULL AND YEAR(DATE) = 2022;

SELECT COUNT(*) FROM TRANSACTIONS WHERE BANK IS NULL AND YEAR(DATE) = 2022;

UPDATE TRANSACTIONS
SET BANK = 'SKY BANK' WHERE BANK IS NULL AND YEAR(DATE) = 2022;

SELECT * FROM TRANSACTIONS WHERE BANK IS NULL AND YEAR(DATE) = 2021;

UPDATE TRANSACTIONS
SET BANK = 'DBS BANK' WHERE BANK IS NULL AND YEAR(DATE) = 2021;

SELECT * FROM TRANSACTIONS WHERE BANK IS NULL AND YEAR(DATE) = 2020;

SELECT * FROM TRANSACTIONS WHERE BANK IS NULL AND YEAR(DATE) = 2019;

UPDATE TRANSACTIONS
SET BANK = 'NORTHEN BANK' WHERE BANK IS NULL AND YEAR(DATE) = 2019;

SELECT * FROM TRANSACTIONS WHERE BANK IS NULL AND YEAR(DATE) = 2018;

UPDATE TRANSACTIONS
SET BANK = 'SOUTHEN BANK' WHERE BANK IS NULL AND YEAR(DATE) = 2018;

SELECT * FROM TRANSACTIONS WHERE BANK IS NULL AND YEAR(DATE) = 2017;

UPDATE TRANSACTIONS
SET BANK = 'ADB BANK' WHERE BANK IS NULL AND YEAR(DATE) = 2017;

SELECT * FROM TRANSACTIONS WHERE BANK IS NULL;

-- *************************************************************************

SELECT * FROM CARD;

SELECT COUNT(*) FROM CARD;

SELECT DISTINCT YEAR(ISSUED) FROM CARD
ORDER BY 1 DESC;

SELECT 

UPDATE CARD
SET ISSUED = DATEADD(YEAR, 1,ISSUED)
WHERE YEAR(ISSUED) = 2021;

UPDATE CARD
SET ISSUED = DATEADD(YEAR, 1,ISSUED)
WHERE YEAR(ISSUED) = 2020;

UPDATE CARD
SET ISSUED = DATEADD(YEAR, 1,ISSUED)
WHERE YEAR(ISSUED) = 2019;

UPDATE CARD
SET ISSUED = DATEADD(YEAR, 1,ISSUED)
WHERE YEAR(ISSUED) = 2018;

UPDATE CARD
SET ISSUED = DATEADD(YEAR, 1,ISSUED)
WHERE YEAR(ISSUED) = 2017;

UPDATE CARD
SET ISSUED = DATEADD(YEAR, 1,ISSUED)
WHERE YEAR(ISSUED) = 2016;

SELECT DISTINCT YEAR(ISSUED) FROM CARD
ORDER BY 1 DESC;

SELECT YEAR(ISSUED), COUNT(*) AS TOTAL_TAXN
FROM CARD
GROUP BY 1
ORDER BY 1 DESC;

SELECT * FROM DISTRICT; -- NO CLEANNING REQUIRED
SELECT * FROM ACCOUNT;  -- NO CLEANNING REQUIRED
SELECT * FROM TRANSACTIONS; -- CLEANNING DONE
SELECT * FROM DISPOSITION;  -- NO CLEANNING REQUIRED
SELECT * FROM CARD; -- CLEANNING DONE
SELECT * FROM ORDER_TABLE;  -- NO CLEANNING REQUIRED
SELECT * FROM LOAN; -- NO CLEANNING REQUIRED
SELECT * FROM CLIENT;   -- NO CLEANNING REQUIRED

-- *******************  CLENNING DONE    ********************

--  ******************  CONNECT TO POWER BI *****************

-- ******************     Ad-hoc Data Analysis START    ****************************