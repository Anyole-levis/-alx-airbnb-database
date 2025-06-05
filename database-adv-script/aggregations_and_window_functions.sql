SELECT user.user_id, user.first_name, user.last_name, COUNT(booking.booking_id) AS total_bookings
FROM User 
LEFT JOIN Booking ON user.user_id = booking.user_id
GROUP BY user.user_id, user.first_name, user.last_name

SELECT Booking.property_id, Property.name, RANK() OVER (ORDER BY total_booking DESC) AS RANK,
  ROW_NUMBER () OVER(ORDER BY total_booking DESC) AS ROW_NUM
FROM Booking
