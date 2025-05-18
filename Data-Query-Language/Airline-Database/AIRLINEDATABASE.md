# Airline Database
Download this [Airline Database](Data-Manipulation-Language/Airline-Database/Airline2.sql) to begin the Exercise.

### Basic Query
  * **1**. Retrieve all data from the Airlines table.
    * [Solution](./Solution/Basic-Queries/exercise1.sql)
  * **2**. Retrieve the names of all airlines based in the USA.
    * [Solution](./Solution/Basic-Queries/exercise2.sql)
  * **3**. Retrieve the names of all airports located in New York.
    * [Solution](./Solution/Basic-Queries/exercise3.sql)
  * **4**. Retrieve the number of flights for each airline.
    * [Solution](./Solution/Basic-Queries/exercise4.sql)
  * **5**. Retrieve the details of the flight with FlightID 101.
    * [Solution](./Solution/Basic-Queries/exercise5.sql)

---

### Aggregation Function
  * **1**. Find the total number of flights in the database. 
    * [Solution](./Solution/Aggregation-Functions/exercise1.sql)
  * **2**. Calculate the average departure time of flights.
    * [Solution](./Solution/Aggregation-Functions/exercise2.sql)
  * **3**. Find the airline with the most flights.
    * [Solution](./Solution/Aggregation-Functions/exercise3.sql)
  * **4**. Find the airport with the highest number of outgoing flights.
    * [Solution](./Solution/Aggregation-Functions/exercise4.sql)
  * **5**. Calculate the total number of passengers.
    * [Solution](./Solution/Aggregation-Functions/exercise5.sql)

---

### Sub-Query
  * **1**. Retrieve the details of passengers who booked a ticket with Emirates. 
    * [Solution](./Solution/Subqueries/exercise1.sql)
  * **2**. Retrieve the details of flights departing from New York.
    * [Solution](./Solution/Subqueries/exercise2.sql)
  * **3**. Retrieve the names of passengers who booked a ticket for a flight departing from New York with Emirates.
    * [Solution](./Solution/Subqueries/exercise3.sql)
  * **4**. Retrieve the details of flights where the departure time is later than the average departure time.
    * [Solution](./Solution/Subqueries/exercise4.sql)
  * **5**. Retrieve the names of passengers who booked a ticket for a flight operated by the airline with the fewest flights.
    * [Solution](./Solution/Subqueries/exercise5.sql)

---

### Join
  * **1**. Retrieve the details of flights along with the name of the airline.
    * [Solution](./Solution/Join/exercise1.sql)
  * **2**. Retrieve the details of tickets along with the passenger's name. 
    * [Solution](./Solution/Join/exercise2.sql)
  * **3**. Retrieve the details of flights, including the names of the source and destination airports.
    * [Solution](./Solution/Join/exercise3.sql)
  * **4**. Retrieve the names of passengers who booked a ticket for a flight departing from New York.
    * [Solution](./Solution/Join/exercise4.sql)
  * **5**. Retrieve the names of passengers who booked a ticket with Emirates.
    * [Solution](./Solution/Join/exercise5.sql)

---

### View
  * **1**. Create a view named "FlightDetails" that retrieves the details of flights along with the names of the source and destination airports.
    * [Solution](./Solution/Create-View/exercise1.sql)
  * **2**. Query the FlightDetails view to retrieve the flight details.
    * [Solution](./Solution/Create-View/exercise2.sql)

---

### Store Procedure
  * **1**. Create a stored procedure named "GetFlightsByAirline" that takes an airline name as input and retrieves all flights operated by that airline. 
    * [Solution](./Solution/Stored-Procedure/exercise1.sql)
  * **2**. Execute the stored procedure to retrieve flights operated by Emirates. 
    * [Solution](./Solution/Stored-Procedure/exercise2.sql)
  * **3**. Create a stored procedure named "GetPassengerDetails" that takes a passenger name as input and retrieves all details of that passenger.
    * [Solution](./Solution/Stored-Procedure/exercise3.sql)
  * **4**. Execute the stored procedure to retrieve details of the passenger named "John Smith".
    * [Solution](./Solution/Stored-Procedure/exercise4.sql)
