SELECT Booking.booking_id, Booking.property_id,
  Booking.start_date,
  Booking.end_date, 
  User.user_id,
  User.first_name, 
  User.last_name
  User.email
FROM Booking 
INNER JOIN Booking ON User.user_id = Booking.userid 


