-- 4. Find the airport with the highest number of outgoing flights.
SELECT 
    ap.AirportID,
    ap.Name AS Airport_Name,
    COUNT(f.FlightID) AS Outgoing_Flight_Count
FROM flights f
JOIN airports ap ON f.DestinationAirportID = ap.AirportID
GROUP BY ap.AirportID, ap.Name
ORDER BY Outgoing_Flight_Count DESC
LIMIT 1;