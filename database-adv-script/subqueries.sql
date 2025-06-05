SELECT property_id, name, description,
FROM Property
WHERE property_id IN (
  SELECT property_id
  FROM Review 
  GROUP BY property_id
  HAVING AVG(rating) > 4
);
  
SELECT user_id, first_name, last_name
FROM User
WHERE user_id IN (
  SELECT user_id
  FROM Booking 
  HAVING COUNT(booking_id) > 3
);
