-- 5. Retrieve the names of passengers who booked a ticket with Emirates.
SELECT 
	p.PassengerID,
    p.Name,
	f.FlightID,
    f.DepartureTime,
    f.ArrivalTime,
    f.SourceAirportID,
    f.DestinationAirportID
FROM passengers p
JOIN tickets t ON t.PassengerID = p.PassengerID
JOIN flights f ON f.FlightID = t.FlightID
JOIN airlines a ON f.AirlineID = a.AirlineID
WHERE a.Name = 'Emirates';