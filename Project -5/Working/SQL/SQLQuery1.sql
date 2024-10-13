--Data Exploration – Check Distinct Values

SELECT Gender, Count(Gender) as TotalCount,
Count(Gender) * 1.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by Gender

SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 1.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by Contract


SELECT 
    Customer_Status, 
    COUNT(Customer_Status) AS TotalCount, 
    SUM(Total_Revenue) AS TotalRev,
    (SUM(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM stg_Churn) * 100) AS RevPercentage
FROM 
    stg_Churn
GROUP BY 
    Customer_Status;



SELECT State, Count(State) as TotalCount,
Count(State) * 1.0 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by State
Order by Percentage desc

ALTER TABLE stg_Churn
ALTER COLUMN Total_Revenue FLOAT;


EXEC sp_help 'stg_Churn';
