-- Remove Null Values From hospitalisationdetails and medicalexaminations --
SET SQL_SAFE_UPDATES = 0;
DELETE FROM hospitalisationdetails WHERE Customer_ID IS NULL;
DELETE FROM medicalexaminations WHERE Customer_ID IS NULL;

-- Remove duplicates From medicalexaminations --
DELETE FROM medicalexaminations
WHERE Customer_ID IN (
    SELECT Customer_ID
    FROM (
        SELECT Customer_ID, COUNT(*) 
        FROM medicalexaminations 
        GROUP BY Customer_ID 
        HAVING COUNT(*) > 1
    ) dup
);

-- Remove duplicates From hospitalisationdetails --
DELETE FROM hospitalisationdetails
WHERE Customer_ID IN (
    SELECT Customer_ID
    FROM (
        SELECT Customer_ID, COUNT(*) 
        FROM hospitalisationdetails 
        GROUP BY Customer_ID 
        HAVING COUNT(*) > 1
    ) dup
);

-- Change column type to VARCHAR if necessary --
ALTER TABLE medicalexaminations MODIFY COLUMN Customer_ID VARCHAR(255);
ALTER TABLE hospitalisationdetails MODIFY COLUMN Customer_ID VARCHAR(255);

-- Add Primary Key constraints --
ALTER TABLE medicalexaminations ADD PRIMARY KEY (Customer_ID);
ALTER TABLE hospitalisationdetails ADD PRIMARY KEY (Customer_ID);

-- Merge the medicalexaminations and hospitalisationdetails Tables --
CREATE TABLE merged_data AS
SELECT 
    me.Customer_ID, 
    me.BMI, 
    me.HBA1C, 
    me.Heart_Issues, 
    me.Any_Transplants, 
    me.Cancer_history, 
    me.NumberOfMajorSurgeries, 
    me.smoker,
    hd.year, 
    hd.month, 
    hd.date, 
    hd.children, 
    hd.charges, 
    hd.Hospital_tier, 
    hd.City_tier, 
    hd.State_ID
FROM medicalexaminations me
JOIN hospitalisationdetails hd
ON me.Customer_ID = hd.Customer_ID;

-- Retrieve information about diabetic and heart problem patients --

SELECT
	AVG(YEAR(CURRENT_DATE) - year) AS average_age,
    AVG(children) AS average_number_of_dependent_children,
    AVG(BMI) AS average_BMI,
    AVG(charges) AS average_hospitalization_costs
FROM merged_data
WHERE HBA1C > 6.5 AND Heart_Issues = 'yes';

-- Average hospitalization cost for each hospital tier and city level --
SELECT 
     Hospital_tier,
     City_tier,
     AVG(charges) AS average_hospitalization_cost
FROM merged_data
GROUP BY Hospital_tier,City_tier;

-- Number of people with major surgery and history of cancer --
SELECT COUNT(*) AS number_of_people 
FROM merged_data
WHERE NumberOfMajorSurgeries != 'No major surgery' AND Cancer_history = 'yes';

-- Determine the number of tier-1 hospitals in each state --
SELECT
    State_ID,
    COUNT(*) AS number_of_tier_1_hospitals
FROM merged_data
WHERE Hospital_tier = 'tier - 1'
GROUP BY State_ID;
 
    






