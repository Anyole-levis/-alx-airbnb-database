CREATE INDEX idx_user_user_id ON User(user_id)
CREATE INDEX idx_booking_id ON Booking(booking_id)
CREATE INDEX idx_property_id ON Property(property_id)
CREATE INDEX idx_rating ON Review (ratings)
-- Before adding index
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 42;

-- After adding index
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 42;
