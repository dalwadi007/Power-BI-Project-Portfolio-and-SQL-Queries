SELECT * FROM ActiveCustomer
SELECT * FROM Bank_Departure
SELECT * FROM CreditCard
SELECT * FROM CustomerInfo
SELECT * FROM ExitCustomer
SELECT * FROM Gender
SELECT * FROM Geography

ALTER TABLE Bank_Departure
drop column RowNumber /*I HAVE REMOVED ROWNUMBER COLUMN AND MADE CUSTOMERID AS A PRIMARY KEY*/

SELECT CustomerID, COUNT(*)
FROM Bank_Departure
GROUP BY CustomerID
HAVING COUNT(*) > 1; /*THERE IS NO DUPLICATES IN THE CUSTOMERID */

SELECT MAX(BALANCE),GeographyID FROM Bank_Departure
GROUP BY GeographyID
ORDER BY GeographyID ASC/*maximum balance by geography id spain,france,germany*/

SELECT MIN(BALANCE),GeographyID FROM Bank_Departure
GROUP BY GeographyID
ORDER BY GeographyID ASC  /*minimum balance by geographyid germany is the lowest*/

SELECT MIN(BALANCE) FROM Bank_Departure /*0*/

SELECT GEOGRAPHYID , SUM(BALANCE) AS TOTAL_BALANCE FROM Bank_Departure
GROUP BY GeographyID
ORDER BY GeographyID ASC /*I HAVE GOT THE TOTAL_BALANCE ORDER BY GEOGRAPHY, FRANCE HAS THE HIGHEST
GERMANY IS THE SECOND HIGHEST , SPAIN IS THE LOWEST*/

SELECT GeographyID,AVG(BALANCE) AS AVG_BALANCE FROM Bank_Departure
GROUP BY GeographyID
ORDER BY GeographyID ASC /*HIGHEST IS GERMANY , SECOND HIGHEST IS FRANCE , THIRD HIGHEST IS SPAIN*/

SELECT GeographyID,CustomerId FROM Bank_Departure
WHERE GeographyID = 1  /* FRANCE(1)= 5014 CUSTOMER*/

SELECT COUNT(CustomerId) FROM Bank_Departure
WHERE GeographyID = 1

SELECT COUNT(CustomerId) FROM Bank_Departure
WHERE GeographyID = 2

SELECT COUNT(CustomerId) FROM Bank_Departure
WHERE GeographyID = 3

SELECT GeographyID FROM Bank_Departure
WHERE GeographyID = 2  /*SPAIN(2)=2477 CUSTOMER*/

SELECT GeographyID FROM Bank_Departure
WHERE GeographyID = 3 /*GERMANY(3)= 2509 CUSTOMER*/

UPDATE CustomerInfo
SET Surname = 'HILLS'
WHERE Surname = '?' /*THERE WAS AN ? IN THE CUSTMERINFO
TABLE CUSTOMER_ID 15592389*/
------------------------------------------------------------------------------------------------------------------------------------
/*ADDED GEOGRAPHYID LATER ON*/

ALTER TABLE GEOGRAPHY
DROP COLUMN GEOGRAPHYID /*IT WAS NOTHING BUT SERIAL NUMBERS AND IT'S AVAILABLE IN SQL*/

ALTER TABLE GEOGRAPHY
ADD GEOGRAPHYID INT NULL

UPDATE GEOGRAPHY
SET GeographyID = 1 
WHERE GeographyLocation = 'FRANCE'

UPDATE GEOGRAPHY
SET GeographyID = 2 
WHERE GeographyLocation = 'SPAIN'

UPDATE GEOGRAPHY
SET GeographyID = 3
WHERE GeographyLocation = 'GERMANY'
---------------------------------------------------------------------------------------------------------------------------------------
SELECT TOP 10 MAX(BALANCE),CustomerId,GeographyID FROM Bank_Departure
GROUP BY GeographyID,CustomerId
ORDER BY GeographyID /*HIGHEST FROM FRANCE*/ 

SELECT MIN(Bank_DOJ) AS START__DATE ,MAX(Bank_DOJ) AS END__DATE
FROM Bank_Departure /*START DATE:01-01-2016 TO END DATE:31-12-2019*/

SELECT TOP 5 MAX(EstimatedSalary) as top_5_salary,CustomerId,GeographyID FROM Bank_Departure
GROUP BY GeographyID,CustomerId
ORDER BY GeographyID /*top 5 max estimated salary is from france*/

SELECT MIN(BALANCE),GeographyID FROM Bank_Departure
GROUP BY GeographyID
ORDER BY GeographyID ASC /*GERMANY IS THE LOWEST*/

SELECT BALANCE,CustomerId,GeographyID FROM Bank_Departure
WHERE Balance = 0 AND GeographyID = 1 /*2418 PEOPLE FROM FRANCE*/ 

SELECT BALANCE,CustomerId,GeographyID FROM Bank_Departure
WHERE Balance = 0 AND GeographyID = 2 /*1199 CUSTOMERS FROM SPAIN HAVING ZERO BALANCE*/
/*TOTAL 3617 PEOPLE HAVE ZERO BALANCE IN THEIR ACCOUNT AND ALL ARE FROM FRANCE(1) AND SPAIN(2)*/
-------------------------------------------------------------------------------------------------------------------------------------
/*AGE WISE ANALYSIS*/

SELECT 'YOUNG' AS AgeGroup,COUNT(*) AS PeopleCount
FROM Bank_Departure
WHERE Age < 25  /*YOUNG:457 CUSTOMER*/

UNION ALL

SELECT 'MIDDLE AGE' AS AgeGroup , COUNT(*) AS PeopleCount
FROM Bank_Departure
WHERE Age BETWEEN 30 AND 50 /*MIDDLE AGE:7098 CUSTOMER*/

UNION ALL

SELECT 'AGED' AS AgeGroup, COUNT(*) AS PeopleCount
FROM Bank_Departure
WHERE Age > 60; /*AGED:464 CUSTOMER*/

-------------------------------------------------------------------------------------------------------------------------------
/*GROUPING OF AGE*/

SELECT 'YOUNG' AS AgeGroup,COUNT(*) AS PeopleCount,GeographyID
FROM Bank_Departure
WHERE AGE > 25
GROUP BY GeographyID
ORDER BY GeographyID ASC /*YOUNG PEOPLE FROM FRANCE:4708/SPAIN:2315/GERMANY:2366
HIGHEST FROM THE FRANCE/SECOND HIGHEST FROM THE GERMANY/LOWEST FROM:SPAIN*/ 

SELECT 'MIDDLE AGE' AS AgeGroup,COUNT(*) AS PeopleCount,GeographyID
FROM Bank_Departure
WHERE AGE BETWEEN 30 AND 50
GROUP BY GeographyID
ORDER BY GeographyID ASC /*MIDDLE AGE*/ 
/*FRANCE:3550,SPAIN:2477,GERMANY:2509*/

SELECT 'AGED' AS AgeGroup,COUNT(*) AS PeopleCount,GeographyID
FROM Bank_Departure
WHERE AGE > 60
GROUP BY GeographyID
ORDER BY GeographyID ASC /*AGED*/
/*FRANCE:231,SPAIN:120,GERMANY:113*/
 
--------------------------------------------------------------------------------------------------------------------------
/*CREDIT SCORE ANALYSIS*/

SELECT MAX(CREDITSCORE)FROM Bank_Departure
WHERE GeographyID = 1 OR GeographyID = 2 OR GeographyID = 3 /*850 MAX*/

SELECT MIN(CREDITSCORE) FROM Bank_Departure
WHERE GeographyID = 1 OR GeographyID = 2 OR GeographyID = 3 /*350 MINIMUM*/

SELECT CustomerId,CreditScore,GEOGRAPHYID FROM Bank_Departure
WHERE CreditScore BETWEEN 800 AND 850 /*EXCELLENT*/

SELECT CustomerId,CreditScore,GEOGRAPHYID FROM Bank_Departure
WHERE CreditScore BETWEEN 740 AND 799 /*VERY GOOD*/

SELECT CustomerId,CreditScore,GEOGRAPHYID FROM Bank_Departure
WHERE CreditScore BETWEEN 670 AND 739 /*GOOD*/

SELECT CustomerId,CreditScore,GEOGRAPHYID FROM Bank_Departure
WHERE CreditScore BETWEEN 580 AND 669 /*GOOD*/

SELECT CustomerId,CreditScore,GEOGRAPHYID FROM Bank_Departure
WHERE CreditScore BETWEEN 300 AND 579 /*POOR*/

SELECT Surname FROM CustomerInfo WHERE Surname LIKE '%!%' OR Surname LIKE '%@%' OR Surname LIKE '%#%' OR Surname LIKE '%$%' OR Surname LIKE '%^%' OR Surname LIKE '%&%' OR Surname LIKE '%*%' 
OR Surname LIKE '%(%' OR Surname LIKE '%)%' OR Surname LIKE '%-%' OR Surname LIKE '%_%' OR Surname LIKE '%.%' OR Surname LIKE '%/%' OR Surname LIKE '%?%' 
OR Surname LIKE '%,%'

SELECT * FROM CustomerInfo WHERE Surname LIKE '%[!@#$%^&*_|,\/?]%';

UPDATE CustomerInfo
SET Surname = REPLACE(Surname, '[!@#$%^&*_|,\\/<>?]', '')
WHERE Surname = '[!@#$%^&*_|,\\/<>?]';