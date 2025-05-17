-- 1. Create a stored procedure named "GetFlightsByAirline" that takes an airline name as input and retrieves all flights operated by that airline. 
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