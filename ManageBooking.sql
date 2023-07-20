DROP PROCEDURE IF EXISTS ManageBooking;
DELIMITER $$ 
CREATE PROCEDURE ManageBooking(Input_date DATE, Table_number INT)
BEGIN 
	SELECT
    (CASE 
		WHEN (Exists( SELECT * FROM bookings WHERE TableNumber =Table_number AND  Date=Input_date)) THEN CONCAT("Table ", Table_number, " is already booked")
        ELSE CONCAT("Table ", Table_number, " is avaliable")
	END)
	AS Booking_status 
	FROM bookings LIMIT 1;
    END$$ 
DELIMITER ;