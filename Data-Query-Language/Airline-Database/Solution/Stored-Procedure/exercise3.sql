-- 3. Create a stored procedure named "GetPassengerDetails" that takes a passenger name as input and retrieves all details of that passenger. 
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