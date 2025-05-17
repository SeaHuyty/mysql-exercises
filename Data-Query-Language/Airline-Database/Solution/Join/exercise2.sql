-- 2. Retrieve the details of tickets along with the passenger's name. 
SELECT
	p.PassengerID,
    p.Name,
    t.TicketID,
    t.FlightID,
    t.SeatNumber
FROM passengers p
JOIN tickets t ON p.PassengerID = t.PassengerID;