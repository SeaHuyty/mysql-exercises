-- 3. Retrieve the details of flights, including the names of the source and destination airports. 
SELECT
	f.FlightID,
    f.DepartureTime,
    f.ArrivalTime,
    src.Name as Departure_Airport,
    dest.Name as Destination_Airport
FROM flights f
JOIN airports src ON f.SourceAirportID = src.AirportID
JOIN airports dest ON f.DestinationAirportID = dest.AirportID;