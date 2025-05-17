-- 2. Calculate the average departure time of flights. 
SELECT
	SEC_TO_TIME(AVG(TIME_TO_SEC(TIME(DepartureTime)))) as Average_Departure_Time_of_Flight
FROM flights;