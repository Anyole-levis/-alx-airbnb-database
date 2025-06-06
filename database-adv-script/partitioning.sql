CREATE TABLE Booking_partitioned (
  booking_id: Primary Key, UUID, Indexed
  property_id: Foreign Key, references Property(property_id)
  user_id: Foreign Key, references User(user_id)
  start_date: DATE, NOT NULL
  end_date: DATE, NOT NULL
  total_price: DECIMAL, NOT NULL
  status: ENUM (pending, confirmed, canceled), NOT NULL
  created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
  ) PARTITION BY RANGE (start_date);
-- creating partions 
CREATE TABLE BOOKING_2025_q1 PARTITION OF Booking_partitioned
  FOR VALUES FROM ('2025-01-01') TO ('2025-04-01');

CREATE TABLE BOOKING_2025_q2 PARTITION OF Booking_partitioned 
  FOR VALUES FROM ('2025-04-01') TO ('2025-07-01');

-- entering data to be able to test performance
INSERT INTO Booking_partitioned (
  booking_id, property_id, user_id, start_date, end_date, total_price, status
)
VALUES
  (gen_random_uuid(), 1, 1, '2025-01-10', '2025-01-12', 300.00, 'confirmed'),
  (gen_random_uuid(), 2, 1, '2025-04-10', '2025-04-12', 450.00, 'pending'),
  (gen_random_uuid(), 3, 2, '2025-05-15', '2025-05-20', 600.00, 'confirmed');

-- trying to run a query 
EXPLAIN ANALYZE
SELECT * FROM Booking_partitioned
WHERE start_date BETWEEN '2025-01-01' AND '2025-03-31';
