SELECT CustomerID, FirstName, LastName, Country
FROM User.customers
WHERE Country IS NOT NULL
ORDER BY CASE Country WHEN 'United Kingdom' THEN Region
ELSE Country END;


//RESULT

CustomerID    FirstName   LastName    Country
1             John         Smith      England
2             Susan        Jones      USA

