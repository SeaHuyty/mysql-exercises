-- 3. Find the airline with the most flights. 
SELECT
	a.AirlineID,
    a.Name as Airline_Name,
	COUNT(f.FlightID) as Number_of_flights
FROM flights f
JOIN airlines a ON a.AirlineID = f.AirlineID
GROUP BY a.AirlineID, a.Name
ORDER BY Number_of_flights DESC
LIMIT 1;