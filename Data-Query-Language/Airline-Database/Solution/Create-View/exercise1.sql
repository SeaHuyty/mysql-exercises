-- 1. Create a view named "FlightDetails" that retrieves the details of flights along with the names of the source and destination airports. 
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