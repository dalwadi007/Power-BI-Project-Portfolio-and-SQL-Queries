# Insurance project related Queries
CREATE DATABASE PROJECT2 USE PROJECT2

SELECT * FROM Insurance

/*Q1)COUNT OF A CUSTOMER WHICH IS 1002 */

SELECT COUNT(months_as_customer) FROM INSURANCE

/Q2)3 POLICY STATE IS AS OH : OHIO ,IN : INDIANA, IL : ILIONS/

SELECT COUNT(policy_state) FROM INSURANCE WHERE policy_state = 'OH' /354 FROM OHIO/

SELECT COUNT(policy_state) FROM INSURANCE WHERE policy_state = 'IN'/310 FROM INDIANA/

SELECT COUNT(policy_state) FROM Insurance WHERE policy_state = 'IL' /338 FROM ILIONS/

/Q3)MAX MIN POLICY BLIND DATE/

SELECT MIN(policy_bind_date) FROM Insurance

SELECT Max(policy_bind_date) FROM INSURANCE

/FROM 1990-01-08 TO 2015-02-22 00:00:00.0000000/

/Q4)POLICY COMBINED SINGLE LIMIT/

SELECT COUNT(policy_csl) FROM INSURANCE

/Q5)MAX MIN POLICY DEDUDCTABLE/

SELECT MAX(policy_deductable) FROM Insurance

/500 , 1000 , 2000/

SELECT MIN(policy_deductable) FROM INSURANCE

/Q6)POLICY_ANNUAL_PREMIUM/

SELECT SUM(policy_annual_premium) as annual_premium FROM INSURANCE /1260137.81/

SELECT MIN(policy_annual_premium) FROM INSURANCE/433.33/

SELECT MAX(policy_annual_premium) FROM INSURANCE /2047.59/

SELECT AVG(policy_annual_premium) FROM Insurance /1257.62256487026/

/Q7)umbrella limit/

SELECT MAX(UMBRELLA_LIMIT),incident_state FROM Insurance GROUP BY incident_state ORDER BY incident_state ASC

SELECT MIN(UMBRELLA_LIMIT),Incident_state from Insurance group by incident_state order by incident_state asc

/Q8)incident severity/

SELECT * FROM Insurance WHERE incident_severity = 'MAJOR DAMAGE' /276/

SELECT * FROM Insurance WHERE incident_severity = 'MINOR DAMAGE' /354/

SELECT * FROM Insurance WHERE incident_severity = 'TOTAL LOSS' /282/

SELECT * FROM Insurance WHERE incident_severity = 'TRIVIAL DAMAGE'/90/

/Q9)age grouping/

SELECT 'YOUNG' AS AgeGroup,COUNT(*) AS PeopleCount FROM Insurance WHERE Age BETWEEN 19 AND 29 /YOUNG:155 CUSTOMER/

UNION ALL

SELECT 'MIDDLE AGE' AS AgeGroup , COUNT(*) AS PeopleCount FROM Insurance WHERE Age BETWEEN 30 AND 49 /MIDDLE AGE:733 CUSTOMER/

UNION ALL

SELECT 'AGED' AS AgeGroup, COUNT(*) AS PeopleCount FROM Insurance WHERE Age > 50; /AGED:114/

/* GENDER WISE*/

SELECT COUNT(insured_sex) from Insurance WHERE insured_sex = 'FEMALE' /537 : FEMALE/

SELECT COUNT(insured_sex) FROM Insurance WHERE insured_sex = 'MALE' /465/

/STATE WISE INCIDENT NUMBERS/

SELECT COUNT(incident_state) FROM Insurance WHERE incident_state = 'NEW YORK' /262 FROM NEW YORK/

SELECT COUNT(INCIDENT_STATE) FROM Insurance WHERE incident_state = 'NORTH CAROLINA' /110 FROM NORTH CAROLINA/

SELECT COUNT(INCIDENT_STATE) FROM Insurance WHERE incident_state = 'OHIO' /23 FROM OHIO/

SELECT COUNT(INCIDENT_STATE) FROM Insurance WHERE incident_state = 'PENNYSYLVANIA' /**/

SELECT COUNT(INCIDENT_STATE) FROM Insurance WHERE incident_state = 'SOUTH CAROLINA' /248 FROM SOUTH CAROLINA/

SELECT COUNT(INCIDENT_STATE) FROM Insurance WHERE incident_state = 'VIRGINIA' /110 FROM VIRGINIA/

SELECT COUNT(INCIDENT_STATE) FROM Insurance WHERE incident_state = 'WEST VIRGINIA' /219 FROM WEST VIRGINIA/

/CITY WISE INCIDENT NUMBERS/

SELECT COUNT(INCIDENT_CITY) FROM Insurance WHERE incident_city = 'Arlington' /152/

SELECT COUNT(INCIDENT_CITY) FROM Insurance WHERE incident_city = 'COLUMBUS' /149/

SELECT COUNT(INCIDENT_CITY) FROM Insurance WHERE incident_city = 'HILLSDALE' /143/

SELECT COUNT(INCIDENT_CITY) FROM Insurance WHERE incident_city = 'NORTHBEND' /145/

SELECT COUNT(INCIDENT_CITY) FROM Insurance WHERE incident_city = 'NORTHBROOK' /122/

SELECT COUNT(INCIDENT_CITY) FROM Insurance WHERE incident_city = 'RIVERWOOD' /134/

SELECT COUNT(INCIDENT_CITY) FROM Insurance WHERE incident_city = 'SPRINGFIELD' /157/

/COUNT OF ? IN A PROPERTY_DAMAGE COLUMN/

SELECT COUNT(PROPERTY_DAMAGE) FROM Insurance WHERE property_damage = '?' /362/

SELECT property_claim FROM Insurance WHERE property_claim = '?'

select Count(property_damage) from Insurance where property_damage = 'yes' /664/

select Count(property_damage) from Insurance where property_damage = 'no' /338/

UPDATE Insurance SET property_damage = 'YES' WHERE property_damage = '?'

/AUTO MAKE COUNT/

SELECT COUNT(AUTO_MAKE) AS ACCURA_OWNERS FROM INSURANCE WHERE auto_make = 'ACCURA' /68/

SELECT COUNT(AUTO_MAKE) AS AUDI_OWNERS FROM INSURANCE WHERE auto_make = 'AUDI' /69/

SELECT COUNT(AUTO_MAKE) AS BMW_OWNERS FROM INSURANCE WHERE auto_make = 'BMW' /72/

SELECT COUNT(AUTO_MAKE) AS CHEVROLET_OWNERS FROM INSURANCE WHERE auto_make = 'CHEVROLET' /76/

SELECT COUNT(AUTO_MAKE) AS DODGE_OWNERS FROM INSURANCE WHERE auto_make = 'DODGE'/80/

SELECT COUNT(AUTO_MAKE) AS FORD_OWNERS FROM INSURANCE WHERE auto_make = 'FORD' /72/

SELECT COUNT(AUTO_MAKE) AS HONDA_OWNERS FROM INSURANCE WHERE auto_make = 'HONDA'/55/

SELECT COUNT(AUTO_MAKE) AS JEEP_OWNERS FROM INSURANCE WHERE auto_make = 'JEEP' /67/

SELECT COUNT(AUTO_MAKE) AS MECEDES_OWNERS FROM INSURANCE WHERE auto_make = 'MERCEDES'/65/

SELECT COUNT(AUTO_MAKE) AS NISSAN_OWNERS FROM INSURANCE WHERE auto_make = 'NISSAN' /78/

SELECT COUNT(AUTO_MAKE) AS SAAB_OWNERS FROM INSURANCE WHERE auto_make = 'SAAB' /80/

SELECT COUNT(AUTO_MAKE) AS SUBURU_OWNERS FROM INSURANCE WHERE auto_make = 'SUBURU' /80/

SELECT COUNT(AUTO_MAKE) AS TOYOTA_OWNERS FROM INSURANCE WHERE auto_make = 'TOYOTA' /70/

SELECT COUNT(AUTO_MAKE) AS VOLKSWAGEN_OWNERS FROM INSURANCE WHERE auto_make = 'VOLKSWAGEN' /70/ /TOTAL:1002/

/auto year MIN MAX/

SELECT MAX(AUTO_YEAR) FROM Insurance

/SAME 1995 TO 2015 , 25 YEARS OF DATA OF POLICTY HOLDERS AND INCIDENTS DATA/

SELECT MIN(AUTO_YEAR) FROM Insurance

/COUNT OF FRAUD REPORTED/

SELECT COUNT(fraud_reported) FROM Insurance WHERE fraud_reported = 'Y' /247 FRAUD REPORTED/

SELECT COUNT(fraud_reported) FROM Insurance WHERE fraud_reported = 'N' /755 FRAUD REPORTED/

/LOSS RATIO/

SELECT SUM(total_claim_amount) / SUM(policy_annual_premium) * 100 AS loss_ratio , policy_state FROM insurance GROUP BY policy_state;

/profit ratio/

SELECT policy_state, SUM(policy_annual_premium) AS Total_Revenue, SUM(total_claim_amount) AS Total_Expenses, (SUM(policy_annual_premium) - SUM(total_claim_amount)) / SUM(policy_annual_premium) * 100 AS Profit_Ratio FROM insurance GROUP BY policy_state;

SELECT (months_as_customer) FROM Insurance

SELECT count(insured_occupation) FROM Insurance WHERE insured_occupation = 'adm-clerical' /65/

SELECT count(insured_occupation) FROM Insurance WHERE insured_occupation = 'armed-forces'/69/

SELECT count(insured_occupation) FROM Insurance WHERE insured_occupation = 'craft-repair'/74/

SELECT count(insured_occupation) FROM Insurance WHERE insured_occupation = 'exec-managerial'/76/

SELECT count(insured_occupation) FROM Insurance WHERE insured_occupation = 'farming-fishing'/53/

SELECT count(insured_occupation) FROM Insurance WHERE insured_occupation = 'handlers-cleaners'/54/

SELECT count(insured_occupation) FROM Insurance WHERE insured_occupation = 'machine-op-inspct'/93/

SELECT count(insured_occupation) FROM Insurance WHERE insured_occupation = 'other-service'/71/

SELECT count(insured_occupation) FROM Insurance WHERE insured_occupation = 'priv-house-serv'/71/

SELECT count(insured_occupation) FROM Insurance WHERE insured_occupation = 'prof-specialty'/85/

SELECT count(insured_occupation) FROM Insurance WHERE insured_occupation = 'protective-serv'/63/

SELECT count(insured_occupation) FROM Insurance WHERE insured_occupation = 'sales'/76/

SELECT count(insured_occupation) FROM Insurance WHERE insured_occupation = 'tech-support'/78/

SELECT count(insured_occupation) FROM Insurance WHERE insured_occupation = 'transport-moving' /74/

SELECT Count(police_report_available) from Insurance where police_report_available = 'YES' /316/

select count(property_damage) from Insurance where property_damage = 'YES' /664/

SELECT COUNT(bodily_injuries) from Insurance where bodily_injuries = 1 /328/

SELECT COUNT(bodily_injuries) from Insurance where bodily_injuries = 2 /334/
