EXPLAIN 
SELECT User.user_id,   Booking.booking_id,
  Booking.user_id,
  Booking.start_date,
  Booking.end_date,
  Booking.total_price, 
  Booking.status,
  Booking.created_at,
  user.user_id,
  User.first_name,
  User.last_name, 
  Property.property_id,
  Property.name,
  Property.location,
  User.email, 
  Payment.payment_id,
  Payment.amount,
  Payment.payement_date,
  Payment.Booking_id,
FROM Booking
JOIN USER ON Booking.user_id = User.user_id 
JOIN Property ON Booking.property_id = Property.property_id
WHERE 
  Booking.status = 'confirmed'
  AND Property.location IN ('New York', 'Los Angeles');


