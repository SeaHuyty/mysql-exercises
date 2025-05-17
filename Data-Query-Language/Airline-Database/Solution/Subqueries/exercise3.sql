-- 3. Retrieve the names of passengers who booked a ticket for a flight departing from New York with Emirates. 
SELECT
	p.PassengerID,
    p.Name,
    p.Email
FROM passengers p
WHERE p.PassengerID IN (
	SELECT
		t.PassengerID
	FROM tickets t
	JOIN flights f ON t.FlightID = f.FlightID
    JOIN airports dep ON dep.AirportID = f.SourceAirportID
    JOIN airlines a ON a.AirlineID = f.AirlineID
    WHERE dep.City = 'New York' AND a.Name = 'Emirates'
);
