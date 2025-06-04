-- first query
SELECT Booking.booking_id, Booking.property_id,
  Booking.start_date,
  Booking.end_date, 
  User.user_id,
  User.first_name, 
  User.last_name
  User.email
FROM Booking 
INNER JOIN Booking ON User.user_id = Booking.userid 

-- second query
SELECT Property.property_id,
  Property.name,
  Property.description,
  Property.location, 
  Property.pricepernight, 
  Review.property_id, 
  Review.review_id, 
  Review.userid, 
  Review.rating, 
  Review.comment,
FROM  Property
LEFT JOIN Review ON Property.property_id = Review.property_id
ORDER BY Property.name;

-- third query
SELECT User.user_id, 
  User.first_name, 
  User.last_name, 
  User.email, 
  Booking.booking_id, 
  Booking.property_id,
  booking.userid, 
  Booking.start_date, 
  Booking.end_date, 
  Booking.total_price
FROM User
FULL OUTER JOIN Booking ON User.user_id = booking.user_id


