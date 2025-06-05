SELECT user.user_id, user.first_name, user.last_name, COUNT(booking.booking_id) AS total_bookings
FROM User 
LEFT JOIN Booking ON user.user_id = booking.user_id
GROUP BY user.user_id, user.first_name, user.last_name
