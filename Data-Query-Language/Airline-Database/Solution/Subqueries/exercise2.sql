-- 2. Retrieve the details of flights departing from New York. 
SELECT
	f.FlightID,
    f.AirlineID,
    f.SourceAirportID,
    f.DestinationAirportID,
    f.DepartureTime,
    f.ArrivalTime
FROM flights f
WHERE f.SourceAirportID IN (
	SELECT
		AirportID
	FROM airports
    WHERE City = 'New York'
);