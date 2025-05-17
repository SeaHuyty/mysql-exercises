-- 1. Retrieve the details of passengers who booked a ticket with Emirates. 
SELECT
    p.PassengerID,
    p.Name AS Passenger_Name,
    p.Email
FROM passengers p
WHERE p.PassengerID IN (
    SELECT t.PassengerID
    FROM tickets t
    JOIN flights f ON f.FlightID = t.FlightID
    JOIN airlines a ON a.AirlineID = f.AirlineID
    WHERE a.Name = 'Emirates'
);