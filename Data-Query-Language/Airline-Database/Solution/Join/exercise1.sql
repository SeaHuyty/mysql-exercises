-- 1. Retrieve the details of flights along with the name of the airline.
SELECT
	a.AirlineID,
    a.Name as Airline_Name,
	COUNT(f.FlightID) as Number_of_flights
FROM flights f
JOIN airlines a ON a.AirlineID = f.AirlineID
GROUP BY AirlineID;