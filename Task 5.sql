
-- INNER JOIN
SELECT 
    p.Passenger_Id, p.Name, b.Booking_Id, b.Fare
FROM 
    Passenger p
INNER JOIN 
    Booking b ON p.Passenger_Id = b.Passenger_Id;

-- LEFT JOIN
SELECT 
    p.Passenger_Id, p.Name, b.Booking_Id, b.Fare
FROM 
    Passenger p
LEFT JOIN 
    Booking b ON p.Passenger_Id = b.Passenger_Id;

-- RIGHT JOIN
SELECT 
    p.Passenger_Id, p.Name, b.Booking_Id, b.Fare
FROM 
    Passenger p
RIGHT JOIN 
    Booking b ON p.Passenger_Id = b.Passenger_Id;

-- FULL OUTER JOIN simulation using UNION
SELECT 
    p.Passenger_Id, p.Name, b.Booking_Id, b.Fare
FROM 
    Passenger p
LEFT JOIN 
    Booking b ON p.Passenger_Id = b.Passenger_Id

UNION

SELECT 
    p.Passenger_Id, p.Name, b.Booking_Id, b.Fare
FROM 
    Passenger p
RIGHT JOIN 
    Booking b ON p.Passenger_Id = b.Passenger_Id;
