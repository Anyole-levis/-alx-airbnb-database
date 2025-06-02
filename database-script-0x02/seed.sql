-- Sample Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('uuid-user-1', 'Alice', 'Smith', 'alice@example.com', 'hashed_pwd_1', '1234567890', 'guest'),
  ('uuid-user-2', 'Bob', 'Johnson', 'bob@example.com', 'hashed_pwd_2', '2345678901', 'host'),
  ('uuid-user-3', 'Clara', 'Lee', 'clara@example.com', 'hashed_pwd_3', NULL, 'host'),
  ('uuid-user-4', 'David', 'Miller', 'david@example.com', 'hashed_pwd_4', '3456789012', 'guest');

-- Sample Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('uuid-prop-1', 'uuid-user-2', 'Cozy Apartment in NYC', 'A lovely apartment in Manhattan.', 'New York', 150.00),
  ('uuid-prop-2', 'uuid-user-2', 'Beach House', 'A beautiful house by the beach.', 'Los Angeles', 250.00),
  ('uuid-prop-3', 'uuid-user-3', 'Modern Loft', 'Spacious loft in the city center.', 'Chicago', 180.00);

-- Sample Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('uuid-book-1', 'uuid-prop-1', 'uuid-user-4', '2024-06-10', '2024-06-15', 750.00, 'confirmed'),
  ('uuid-book-2', 'uuid-prop-2', 'uuid-user-1', '2024-07-01', '2024-07-05', 1000.00, 'pending'),
  ('uuid-book-3', 'uuid-prop-3', 'uuid-user-4', '2024-08-15', '2024-08-20', 900.00, 'confirmed');

-- Sample Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('uuid-pay-1', 'uuid-book-1', 750.00, 'credit_card'),
  ('uuid-pay-2', 'uuid-book-3', 900.00, 'paypal');

-- Sample Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('uuid-rev-1', 'uuid-prop-1', 'uuid-user-4', 5, 'Amazing stay! The apartment was clean and cozy.'),
  ('uuid-rev-2', 'uuid-prop-3', 'uuid-user-4', 4, 'Great location, but a bit noisy at night.');

-- Sample Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('uuid-msg-1', 'uuid-user-1', 'uuid-user-2', 'Hi Bob, is the Beach House available in July?'),
  ('uuid-msg-2', 'uuid-user-2', 'uuid-user-1', 'Hi Alice, yes, the Beach House is available! Let me know your dates.'),
  ('uuid-msg-3', 'uuid-user-4', 'uuid-user-3', 'Hi Clara, is the Modern Loft pet-friendly?');


