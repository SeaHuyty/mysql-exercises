USE airline_database2;

-- BASIC QUERIES
-- 1.  Retrieve all data from the Airlines table. 
SELECT
	*
FROM airlines;

-- 2. Retrieve the names of all airlines based in the USA. 
SELECT
	*
FROM airlines
WHERE Country = 'USA';

-- 3. Retrieve the names of all airports located in New York. 
SELECT 
	AirportID,
    Name,
    City
FROM airports
WHERE City = 'New York';

-- 4. Retrieve the number of flights for each airline. 
SELECT
	a.AirlineID,
    a.Name as Airline_Name,
	COUNT(f.FlightID) as Number_of_flights
FROM flights f
JOIN airlines a ON a.AirlineID = f.AirlineID
GROUP BY AirlineID;

-- 5. Retrieve the details of the flight with FlightID 101. 
SELECT 
	*
FROM flights
WHERE FlightID = 101;

-- AGGREGATION FUNCTIONS
-- 6. Find the total number of flights in the database. 
SELECT
	COUNT(FlightID) as Total_Number_of_Flights
FROM flights;

-- 7. Calculate the average departure time of flights. 
SELECT
	SEC_TO_TIME(AVG(TIME_TO_SEC(TIME(DepartureTime)))) as Average_Departure_Time_of_Flight
FROM flights;

-- 8. Find the airline with the most flights. 
SELECT
	a.AirlineID,
    a.Name as Airline_Name,
	COUNT(f.FlightID) as Number_of_flights
FROM flights f
JOIN airlines a ON a.AirlineID = f.AirlineID
GROUP BY a.AirlineID, a.Name
ORDER BY Number_of_flights DESC
LIMIT 1;

-- 9. Find the airport with the highest number of outgoing flights.
SELECT 
    ap.AirportID,
    ap.Name AS Airport_Name,
    COUNT(f.FlightID) AS Outgoing_Flight_Count
FROM flights f
JOIN airports ap ON f.DestinationAirportID = ap.AirportID
GROUP BY ap.AirportID, ap.Name
ORDER BY Outgoing_Flight_Count DESC
LIMIT 1;
 
-- 10. Calculate the total number of passengers. 
SELECT
	COUNT(*) AS Total_Number_of_Passengers
FROM passengers;

-- JOIN
-- 11. Retrieve the details of flights along with the name of the airline.
SELECT
	a.AirlineID,
    a.Name as Airline_Name,
	COUNT(f.FlightID) as Number_of_flights
FROM flights f
JOIN airlines a ON a.AirlineID = f.AirlineID
GROUP BY AirlineID;

-- 12. Retrieve the details of tickets along with the passenger's name. 
SELECT
	p.PassengerID,
    p.Name,
    t.TicketID,
    t.FlightID,
    t.SeatNumber
FROM passengers p
JOIN tickets t ON p.PassengerID = t.PassengerID;

-- 13. Retrieve the details of flights, including the names of the source and destination airports. 
SELECT
	f.FlightID,
    f.DepartureTime,
    f.ArrivalTime,
    src.Name as Departure_Airport,
    dest.Name as Destination_Airport
FROM flights f
JOIN airports src ON f.SourceAirportID = src.AirportID
JOIN airports dest ON f.DestinationAirportID = dest.AirportID;

-- 14. Retrieve the names of passengers who booked a ticket for a flight departing from New York.
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

-- 15. Retrieve the names of passengers who booked a ticket with Emirates.
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

-- SUBQUERIES
-- 16. Retrieve the details of passengers who booked a ticket with Emirates. 
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

-- 17. Retrieve the details of flights departing from New York. 
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

-- 18. Retrieve the names of passengers who booked a ticket for a flight departing from New York with Emirates. 
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

-- 19. Retrieve the details of flights where the departure time is later than the average departure time. 
SELECT 
	*
FROM flights
WHERE DepartureTime > (
    SELECT AVG(DepartureTime)
    FROM flights
);

-- 20. Retrieve the names of passengers who booked a ticket for a flight operated by the airline with the fewest flights. 
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

-- CREATE VIEW
-- 21. Create a view named "FlightDetails" that retrieves the details of flights along with the names of the source and destination airports. 
CREATE VIEW FlightDetails AS
SELECT
	f.FlightID,
    f.AirlineID,
    src.Name AS DEPARTURE_AIRPORT,
    dest.Name AS DESTINATION_AIRPORT,
    f.DepartureTime,
    f.ArrivalTime
FROM flights f
JOIN airports src ON src.AirportID = f.SourceAirportID
JOIN airports dest ON dest.AirportID = f.DestinationAirportID;

-- 22. Query the FlightDetails view to retrieve the flight details. 
SELECT * FROM FlightDetails;

-- STORED PROCEDURES
-- 23. Create a stored procedure named "GetFlightsByAirline" that takes an airline name as input and retrieves all flights operated by that airline. 
DELIMITER $$

CREATE PROCEDURE GetFlightsByAirline(IN airline_name VARCHAR(100))
BEGIN
	SELECT 
		f.FlightID,
        f.SourceAirportID,
        f.DestinationAirportID,
        f.DepartureTime,
        f.ArrivalTime
	FROM flights f
    JOIN airlines a ON a.AirlineID = f.AirlineID
    WHERE a.Name = airline_name;
END$$

DELIMITER ;

-- 24. Execute the stored procedure to retrieve flights operated by Emirates. CALL GetFlightsByAirline('Emirates'); 
CALL GetFlightsByAirline('Emirates');

-- 25. Create a stored procedure named "GetPassengerDetails" that takes a passenger name as input and retrieves all details of that passenger. 
DELIMITER $$

CREATE PROCEDURE GetPassengerDetails(IN passenger_name VARCHAR(100))
BEGIN
	SELECT
		p.PassengerID,
        p.Name,
        p.Email,
        t.TicketID,
        t.FlightID,
        t.SeatNumber
	FROM passengers p
    JOIN Tickets t ON p.PassengerID = t.PassengerID
    WHERE p.Name = passenger_name;
END$$

DELIMITER ;

-- 26. Execute the stored procedure to retrieve details of the passenger named "John Smith".
CALL GetPassengerDetails('John Smith');