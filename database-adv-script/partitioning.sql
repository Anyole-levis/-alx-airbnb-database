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
