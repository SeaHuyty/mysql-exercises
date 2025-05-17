-- 4. Retrieve the details of flights where the departure time is later than the average departure time. 
SELECT 
	*
FROM flights
WHERE DepartureTime > (
    SELECT AVG(DepartureTime)
    FROM flights
);
