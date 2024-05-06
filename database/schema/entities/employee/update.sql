UPDATE Employee
SET salary = 
    CASE
        WHEN experience_years > 20 THEN 20000
        WHEN experience_years BETWEEN 10 AND 20 THEN 15000
        WHEN experience_years > 5 THEN 10000
        ELSE salary 
    END;
