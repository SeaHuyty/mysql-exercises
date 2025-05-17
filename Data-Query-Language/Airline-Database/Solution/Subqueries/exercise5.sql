-- 5. Retrieve the names of passengers who booked a ticket for a flight operated by the airline with the fewest flights. 
SELECT
	p.Name
FROM passengers p
JOIN tickets t ON p.PassengerID = t.PassengerID
JOIN flights f ON t.FlightID = f.FlightID
WHERE f.AirlineID = (
    SELECT 
		AirlineID
    FROM flights
    GROUP BY AirlineID
    ORDER BY COUNT(*) ASC
    LIMIT 1
);