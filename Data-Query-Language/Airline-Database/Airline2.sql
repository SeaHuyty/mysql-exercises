-- drop database airline_database2;
create database airline_database2;

use airline_database2;

show tables;

-- Create tables

CREATE TABLE Airlines (
    AirlineID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Country VARCHAR(100) NOT NULL
);

CREATE TABLE Airports (
    AirportID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Country VARCHAR(100) NOT NULL
);

CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL
);

CREATE TABLE Flights (
    FlightID INT PRIMARY KEY,
    AirlineID INT,
    SourceAirportID INT,
    DestinationAirportID INT,
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID),
    FOREIGN KEY (SourceAirportID) REFERENCES Airports(AirportID),
    FOREIGN KEY (DestinationAirportID) REFERENCES Airports(AirportID)
);

CREATE TABLE Tickets (
    TicketID INT PRIMARY KEY,
    PassengerID INT,
    FlightID INT,
    SeatNumber VARCHAR(10),
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);

-- Insert data
-- Airlines
INSERT INTO Airlines (AirlineID, Name, Country) VALUES
(1, 'Delta Air Lines', 'USA'),
(2, 'Lufthansa', 'Germany'),
(3, 'Emirates', 'UAE'),
(4, 'British Airways', 'UK'),
(5, 'Air France', 'France'),
(6, 'Qatar Airways', 'Qatar'),
(7, 'Singapore Airlines', 'Singapore'),
(8, 'Cathay Pacific', 'Hong Kong'),
(9, 'American Airlines', 'USA'),
(10, 'KLM Royal Dutch Airlines', 'Netherlands'),
(11, 'Turkish Airlines', 'Turkey'),
(12, 'ANA (All Nippon Airways)', 'Japan'),
(13, 'Qantas', 'Australia'),
(14, 'Virgin Atlantic', 'UK'),
(15, 'Swiss International Air Lines', 'Switzerland'),
(16, 'Etihad Airways', 'UAE'),
(17, 'Southwest Airlines', 'USA'),
(18, 'Alitalia', 'Italy'),
(19, 'Scandinavian Airlines', 'Sweden'),
(20, 'Finnair', 'Finland');

-- Insert more data into Airlines
INSERT INTO Airlines (AirlineID, Name, Country) VALUES
(21, 'Air Canada', 'Canada'),
(22, 'LATAM Airlines', 'Chile'),
(23, 'Aeroflot', 'Russia'),
(24, 'Air New Zealand', 'New Zealand'),
(25, 'Saudi Arabian Airlines', 'Saudi Arabia'),
(26, 'EgyptAir', 'Egypt'),
(27, 'Turkmenistan Airlines', 'Turkmenistan'),
(28, 'Ethiopian Airlines', 'Ethiopia'),
(29, 'Kenya Airways', 'Kenya'),
(30, 'Air India', 'India'),
(31, 'Vietnam Airlines', 'Vietnam'),
(32, 'Gulf Air', 'Bahrain'),
(33, 'Azerbaijan Airlines', 'Azerbaijan'),
(34, 'Royal Jordanian', 'Jordan'),
(35, 'Air Astana', 'Kazakhstan'),
(36, 'Thai Airways', 'Thailand'),
(37, 'Garuda Indonesia', 'Indonesia'),
(38, 'Philippine Airlines', 'Philippines'),
(39, 'South African Airways', 'South Africa'),
(40, 'SriLankan Airlines', 'Sri Lanka');


-- Airports
INSERT INTO Airports (AirportID, Name, City, Country) VALUES
(1, 'John F. Kennedy International Airport', 'New York', 'USA'),
(2, 'Heathrow Airport', 'London', 'UK'),
(3, 'Dubai International Airport', 'Dubai', 'UAE'),
(4, 'Los Angeles International Airport', 'Los Angeles', 'USA'),
(5, 'Charles de Gaulle Airport', 'Paris', 'France'),
(6, 'Frankfurt Airport', 'Frankfurt', 'Germany'),
(7, 'Changi Airport', 'Singapore', 'Singapore'),
(8, 'Sydney Airport', 'Sydney', 'Australia'),
(9, 'Narita International Airport', 'Tokyo', 'Japan'),
(10, 'O Hare International Airport', 'Chicago', 'USA'),
(11, 'Hong Kong International Airport', 'Hong Kong', 'Hong Kong'),
(12, 'Amsterdam Airport Schiphol', 'Amsterdam', 'Netherlands'),
(13, 'Leonardo da Vinci–Fiumicino Airport', 'Rome', 'Italy'),
(14, 'Zurich Airport', 'Zurich', 'Switzerland'),
(15, 'Copenhagen Airport', 'Copenhagen', 'Denmark'),
(16, 'Adolfo Suárez Madrid–Barajas Airport', 'Madrid', 'Spain'),
(17, 'Stockholm Arlanda Airport', 'Stockholm', 'Sweden'),
(18, 'Helsinki-Vantaa Airport', 'Helsinki', 'Finland'),
(19, 'Kuala Lumpur International Airport', 'Kuala Lumpur', 'Malaysia'),
(20, 'Brussels Airport', 'Brussels', 'Belgium');

-- Insert more data into Airports
INSERT INTO Airports (AirportID, Name, City, Country) VALUES
(21, 'San Francisco International Airport', 'San Francisco', 'USA'),
(22, 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'India'),
(23, 'Beijing Capital International Airport', 'Beijing', 'China'),
(24, 'Sydney Airport', 'Sydney', 'Australia'),
(25, 'Dublin Airport', 'Dublin', 'Ireland'),
(26, 'Ben Gurion Airport', 'Tel Aviv', 'Israel'),
(27, 'Suvarnabhumi Airport', 'Bangkok', 'Thailand'),
(28, 'Incheon International Airport', 'Seoul', 'South Korea'),
(29, 'Ninoy Aquino International Airport', 'Manila', 'Philippines'),
(30, 'Malpensa Airport', 'Milan', 'Italy'),
(31, 'Munich Airport', 'Munich', 'Germany'),
(32, 'Perth Airport', 'Perth', 'Australia'),
(33, 'Kansai International Airport', 'Osaka', 'Japan'),
(34, 'Vienna International Airport', 'Vienna', 'Austria'),
(35, 'Lisbon Portela Airport', 'Lisbon', 'Portugal'),
(36, 'Cairo International Airport', 'Cairo', 'Egypt'),
(37, 'Jomo Kenyatta International Airport', 'Nairobi', 'Kenya'),
(38, 'Zvartnots International Airport', 'Yerevan', 'Armenia'),
(39, 'Heydar Aliyev International Airport', 'Baku', 'Azerbaijan'),
(40, 'Queen Alia International Airport', 'Amman', 'Jordan');


-- Flights
INSERT INTO Flights (FlightID, AirlineID, SourceAirportID, DestinationAirportID, DepartureTime, ArrivalTime) VALUES
(101, 1, 1, 2, '2024-05-08 08:00:00', '2024-05-08 12:00:00'),
(102, 2, 2, 3, '2024-05-08 10:00:00', '2024-05-08 16:00:00'),
(103, 3, 3, 1, '2024-05-08 13:00:00', '2024-05-08 17:00:00'),
(104, 4, 4, 5, '2024-05-08 09:00:00', '2024-05-08 13:00:00'),
(105, 5, 5, 6, '2024-05-08 11:00:00', '2024-05-08 15:00:00'),
(106, 6, 6, 7, '2024-05-08 14:00:00', '2024-05-08 20:00:00'),
(107, 7, 7, 8, '2024-05-08 16:00:00', '2024-05-08 20:00:00'),
(108, 8, 8, 9, '2024-05-08 12:00:00', '2024-05-08 18:00:00'),
(109, 9, 9, 10, '2024-05-08 15:00:00', '2024-05-08 19:00:00'),
(110, 10, 10, 11, '2024-05-08 18:00:00', '2024-05-08 22:00:00'),
(111, 11, 11, 12, '2024-05-08 07:00:00', '2024-05-08 11:00:00'),
(112, 12, 12, 13, '2024-05-08 09:30:00', '2024-05-08 14:30:00'),
(113, 13, 13, 14, '2024-05-08 12:30:00', '2024-05-08 16:30:00'),
(114, 14, 14, 15, '2024-05-08 15:30:00', '2024-05-08 19:30:00'),
(115, 15, 15, 16, '2024-05-08 17:30:00', '2024-05-08 21:30:00'),
(116, 16, 16, 17, '2024-05-08 20:00:00', '2024-05-09 01:00:00'),
(117, 17, 17, 18, '2024-05-08 22:00:00', '2024-05-09 02:00:00'),
(118, 18, 18, 19, '2024-05-08 05:00:00', '2024-05-08 09:00:00'),
(119, 19, 19, 20, '2024-05-08 07:30:00', '2024-05-08 11:30:00'),
(120, 20, 20, 1, '2024-05-08 10:30:00', '2024-05-08 14:30:00');

-- Passengers
INSERT INTO Passengers (PassengerID, Name, Email) VALUES
(1, 'John Smith', 'john@example.com'),
(2, 'Emily Johnson', 'emily@example.com'),
(3, 'Ahmed Al Mansoori', 'ahmed@example.com'),
(4, 'Maria Garcia', 'maria@example.com'),
(5, 'Chen Wei', 'chen@example.com'),
(6, 'Sophie Dupont', 'sophie@example.com'),
(7, 'Ravi Patel', 'ravi@example.com'),
(8, 'Marta Lopez', 'marta@example.com'),
(9, 'Yuki Tanaka', 'yuki@example.com'),
(10, 'Daniel Müller', 'daniel@example.com'),
(11, 'Anna Kowalski', 'anna@example.com'),
(12, 'Muhammad Ali', 'muhammad@example.com'),
(13, 'Olga Petrova', 'olga@example.com'),
(14, 'David Smith', 'david@example.com'),
(15, 'Elena Sokolova', 'elena@example.com'),
(16, 'Michael Schmidt', 'michael@example.com'),
(17, 'Sara Rossi', 'sara@example.com'),
(18, 'Juan Martínez', 'juan@example.com'),
(19, 'Ingrid Johansson', 'ingrid@example.com'),
(20, 'Aki Takahashi', 'aki@example.com');

-- Insert more data into Passengers
INSERT INTO Passengers (PassengerID, Name, Email) VALUES
(21, 'Sophia Miller', 'sophia@example.com'),
(22, 'Liam Brown', 'liam@example.com'),
(23, 'Olivia Wilson', 'olivia@example.com'),
(24, 'Noah Moore', 'noah@example.com'),
(25, 'Ava Lee', 'ava@example.com'),
(26, 'William Taylor', 'william@example.com'),
(27, 'Isabella Martinez', 'isabella@example.com'),
(28, 'James Anderson', 'james@example.com'),
(29, 'Emma Jackson', 'emma@example.com'),
(30, 'Oliver White', 'oliver@example.com'),
(31, 'Charlotte Garcia', 'charlotte@example.com'),
(32, 'Ethan Johnson', 'ethan@example.com'),
(33, 'Amelia Brown', 'amelia@example.com'),
(34, 'Benjamin Davis', 'benjamin@example.com'),
(35, 'Sophia Rodriguez', 'sophiar@example.com'),
(36, 'Mia Martinez', 'mia@example.com'),
(37, 'Lucas Hernandez', 'lucas@example.com'),
(38, 'Harper Smith', 'harper@example.com'),
(39, 'Alexander Nguyen', 'alexander@example.com'),
(40, 'Evelyn Kim', 'evelyn@example.com'),
(41, 'Ethan Walker', 'ethanw@example.com'),
(42, 'Ava Perez', 'avap@example.com'),
(43, 'Jacob Hall', 'jacobh@example.com'),
(44, 'Mia Turner', 'miat@example.com'),
(45, 'Michael Adams', 'michaela@example.com'),
(46, 'Emily King', 'emilyk@example.com'),
(47, 'Elijah Wright', 'elijahw@example.com'),
(48, 'Charlotte Hill', 'charlotteh@example.com'),
(49, 'Logan Scott', 'logans@example.com'),
(50, 'Amelia Green', 'ameliag@example.com');

-- Insert more data into Passengers

INSERT INTO Passengers (PassengerID, Name, Email) VALUES
(51, 'Jacob Martinez', 'jacob@example.com'),
(52, 'Sophia Johnson', 'sophiaj@example.com'),
(53, 'William Brown', 'williamb@example.com'),
(54, 'Isabella Jones', 'isabellaj@example.com'),
(55, 'Ethan Miller', 'ethanm@example.com'),
(56, 'Olivia Davis', 'oliviad@example.com'),
(57, 'Mia Wilson', 'miaw@example.com'),
(58, 'James Garcia', 'jamesg@example.com'),
(59, 'Charlotte Rodriguez', 'charlotter@example.com'),
(60, 'Noah Hernandez', 'noahh@example.com'),
(61, 'Emma Smith', 'emmas@example.com'),
(62, 'Oliver Kim', 'oliverk@example.com'),
(63, 'Ava Nguyen', 'avan@example.com'),
(64, 'Sophia White', 'sophiaw@example.com'),
(65, 'Liam Lee', 'liaml@example.com'),
(66, 'Emily Taylor', 'emilyt@example.com'),
(67, 'Lucas Anderson', 'lucasa@example.com'),
(68, 'Harper Thomas', 'harpert@example.com'),
(69, 'Michael Jackson', 'michaelj@example.com'),
(70, 'Alexander Harris', 'alexanderh@example.com'),
(71, 'Amelia Hall', 'ameliah@example.com'),
(72, 'Benjamin King', 'benjamink@example.com'),
(73, 'Evelyn Martinez', 'evelynm@example.com'),
(74, 'Mia Clark', 'clarkm@example.com'),
(75, 'Elijah Baker', 'elijahb@example.com'),
(76, 'Ava Adams', 'avaa@example.com'),
(77, 'Ethan Wright', 'ethanw@example.com'),
(78, 'Olivia Perez', 'oliviap@example.com'),
(79, 'William Turner', 'williamt@example.com'),
(80, 'Isabella Scott', 'isabellas@example.com');



-- Tickets
INSERT INTO Tickets (TicketID, PassengerID, FlightID, SeatNumber) VALUES
(1001, 1, 101, 'A1'),
(1002, 2, 102, 'B2'),
(1003, 3, 103, 'C3'),
(1004, 4, 104, 'D4'),
(1005, 5, 105, 'E5'),
(1006, 6, 106, 'F6'),
(1007, 7, 107, 'G7'),
(1008, 8, 108, 'H8'),
(1009, 9, 109, 'I9'),
(1010, 10, 110, 'J10'),
(1011, 11, 111, 'K11'),
(1012, 12, 112, 'L12'),
(1013, 13, 113, 'M13'),
(1014, 14, 114, 'N14'),
(1015, 15, 115, 'O15'),
(1016, 16, 116, 'P16'),
(1017, 17, 117, 'Q17'),
(1018, 18, 118, 'R18'),
(1019, 19, 119, 'S19'),
(1020, 20, 120, 'T20');


-- Insert more data into Flights
INSERT INTO Flights (FlightID, AirlineID, SourceAirportID, DestinationAirportID, DepartureTime, ArrivalTime) VALUES
(121, 1, 2, 1, '2024-05-08 14:00:00', '2024-05-08 18:00:00'),
(122, 2, 3, 2, '2024-05-08 16:00:00', '2024-05-08 22:00:00'),
(123, 3, 1, 3, '2024-05-08 19:00:00', '2024-05-08 23:00:00'),
(124, 4, 5, 4, '2024-05-08 10:00:00', '2024-05-08 14:00:00'),
(125, 5, 6, 5, '2024-05-08 12:00:00', '2024-05-08 16:00:00'),
(126, 6, 7, 6, '2024-05-08 15:00:00', '2024-05-08 21:00:00'),
(127, 7, 8, 7, '2024-05-08 17:00:00', '2024-05-08 21:00:00'),
(128, 8, 9, 8, '2024-05-08 13:00:00', '2024-05-08 19:00:00'),
(129, 9, 10, 9, '2024-05-08 16:30:00', '2024-05-08 20:30:00'),
(130, 10, 11, 10, '2024-05-08 19:30:00', '2024-05-08 23:30:00'),
(131, 11, 12, 11, '2024-05-08 08:30:00', '2024-05-08 12:30:00'),
(132, 12, 13, 12, '2024-05-08 10:00:00', '2024-05-08 15:00:00'),
(133, 13, 14, 13, '2024-05-08 13:30:00', '2024-05-08 17:30:00'),
(134, 14, 15, 14, '2024-05-08 16:30:00', '2024-05-08 20:30:00'),
(135, 15, 16, 15, '2024-05-08 18:30:00', '2024-05-08 22:30:00'),
(136, 16, 17, 16, '2024-05-08 21:00:00', '2024-05-09 02:00:00'),
(137, 17, 18, 17, '2024-05-08 23:30:00', '2024-05-09 03:30:00'),
(138, 18, 19, 18, '2024-05-08 06:30:00', '2024-05-08 10:30:00'),
(139, 19, 20, 19, '2024-05-08 08:00:00', '2024-05-08 12:00:00'),
(140, 20, 1, 20, '2024-05-08 11:00:00', '2024-05-08 15:00:00'),
(141, 1, 3, 1, '2024-05-09 08:00:00', '2024-05-09 12:00:00'),
(142, 2, 4, 2, '2024-05-09 10:00:00', '2024-05-09 16:00:00'),
(143, 3, 5, 3, '2024-05-09 13:00:00', '2024-05-09 17:00:00'),
(144, 4, 6, 4, '2024-05-09 09:00:00', '2024-05-09 13:00:00'),
(145, 5, 7, 5, '2024-05-09 11:00:00', '2024-05-09 15:00:00'),
(146, 6, 8, 6, '2024-05-09 14:00:00', '2024-05-09 20:00:00'),
(147, 7, 9, 7, '2024-05-09 16:00:00', '2024-05-09 20:00:00'),
(148, 8, 10, 8, '2024-05-09 12:00:00', '2024-05-09 18:00:00'),
(149, 9, 11, 9, '2024-05-09 15:30:00', '2024-05-09 19:30:00'),
(150, 10, 12, 10, '2024-05-09 18:30:00', '2024-05-09 22:30:00');

-- Insert more data into Flights
INSERT INTO Flights (FlightID, AirlineID, SourceAirportID, DestinationAirportID, DepartureTime, ArrivalTime) VALUES
(151, 11, 13, 14, '2024-05-09 07:00:00', '2024-05-09 11:00:00'),
(152, 12, 14, 15, '2024-05-09 09:30:00', '2024-05-09 14:30:00'),
(153, 13, 15, 16, '2024-05-09 12:30:00', '2024-05-09 16:30:00'),
(154, 14, 16, 17, '2024-05-09 15:30:00', '2024-05-09 19:30:00'),
(155, 15, 17, 18, '2024-05-09 17:30:00', '2024-05-09 21:30:00'),
(156, 16, 18, 19, '2024-05-09 20:00:00', '2024-05-10 01:00:00'),
(157, 17, 19, 20, '2024-05-09 22:00:00', '2024-05-10 02:00:00'),
(158, 18, 20, 1, '2024-05-09 05:00:00', '2024-05-09 09:00:00'),
(159, 19, 1, 2, '2024-05-09 07:30:00', '2024-05-09 11:30:00'),
(160, 20, 2, 3, '2024-05-09 10:30:00', '2024-05-09 14:30:00'),
(161, 1, 4, 5, '2024-05-09 14:00:00', '2024-05-09 18:00:00'),
(162, 2, 5, 6, '2024-05-09 16:00:00', '2024-05-09 22:00:00'),
(163, 3, 6, 7, '2024-05-09 19:00:00', '2024-05-09 23:00:00'),
(164, 4, 7, 8, '2024-05-09 09:00:00', '2024-05-09 13:00:00'),
(165, 5, 8, 9, '2024-05-09 11:00:00', '2024-05-09 15:00:00'),
(166, 6, 9, 10, '2024-05-09 14:00:00', '2024-05-09 20:00:00'),
(167, 7, 10, 11, '2024-05-09 16:00:00', '2024-05-09 20:00:00'),
(168, 8, 11, 12, '2024-05-09 12:00:00', '2024-05-09 18:00:00'),
(169, 9, 12, 13, '2024-05-09 15:30:00', '2024-05-09 19:30:00'),
(170, 10, 13, 14, '2024-05-09 18:30:00', '2024-05-09 22:30:00');


-- Insert more data into Tickets
INSERT INTO Tickets (TicketID, PassengerID, FlightID, SeatNumber) VALUES
(1051, 51, 151, 'A1'),
(1052, 52, 152, 'B2'),
(1053, 53, 153, 'C3'),
(1054, 54, 154, 'D4'),
(1055, 55, 155, 'E5'),
(1056, 56, 156, 'F6'),
(1057, 57, 157, 'G7'),
(1058, 58, 158, 'H8'),
(1059, 59, 159, 'I9'),
(1060, 60, 160, 'J10'),
(1061, 61, 161, 'K11'),
(1062, 62, 162, 'L12'),
(1063, 63, 163, 'M13'),
(1064, 64, 164, 'N14'),
(1065, 65, 165, 'O15'),
(1066, 66, 166, 'P16'),
(1067, 67, 167, 'Q17'),
(1068, 68, 168, 'R18'),
(1069, 69, 169, 'S19'),
(1070, 70, 170, 'T20'),
(1071, 71, 151, 'U21'),
(1072, 72, 152, 'V22'),
(1073, 73, 153, 'W23'),
(1074, 74, 154, 'X24'),
(1075, 75, 155, 'Y25'),
(1076, 76, 156, 'Z26'),
(1077, 77, 157, 'AA27'),
(1078, 78, 158, 'BB28'),
(1079, 79, 159, 'CC29'),
(1080, 80, 160, 'DD30');