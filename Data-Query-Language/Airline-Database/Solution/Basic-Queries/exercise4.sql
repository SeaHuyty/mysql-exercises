-- 4. Retrieve the number of flights for each airline. 
SELECT
	a.AirlineID,
    a.Name as Airline_Name,
	COUNT(f.FlightID) as Number_of_flights
FROM flights f
JOIN airlines a ON a.AirlineID = f.AirlineID
GROUP BY AirlineID;