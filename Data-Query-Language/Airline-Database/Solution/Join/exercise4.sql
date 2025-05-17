-- 4. Retrieve the names of passengers who booked a ticket for a flight departing from New York.
SELECT
	p.PassengerID,
    p.Name,
    f.FlightID,
    f.AirlineID,
    f.DepartureTime,
    src.Name as Airport_Name
FROM passengers p
JOIN tickets t ON t.PassengerID = p.PassengerID
JOIN flights f ON f.FlightID = t.FlightID
JOIN airports src ON f.SourceAirportID = src.AirportID
WHERE src.City = 'New York';