-- 3. Retrieve the names of all airports located in New York. 
SELECT 
	AirportID,
    Name,
    City
FROM airports
WHERE City = 'New York';