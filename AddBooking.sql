DROP PROCEDURE IF EXISTS AddBooking; 
DELIMITER $$ 
CREATE PROCEDURE AddBooking(IN BookingID INT, IN CustomerID INT, IN TableNumber INT, IN BookingDate DATE)
BEGIN 
INSERT INTO bookings (BookingID, CustomerID, TableNumber, date) VALUES (BookingID, CustomerID, TableNumber, BookingDate); 
SELECT "New booking added" AS "Confirmation";
END$$ DELIMITER ; 