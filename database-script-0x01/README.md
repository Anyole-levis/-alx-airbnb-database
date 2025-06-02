# 📦 Database Schema: Property Rental System
  This SQL schema defines the database structure for a property rental platform, where users can act as guests or hosts, manage properties, handle bookings, 
  process payments, exchange messages, and leave reviews.


# 🏗️ SQL CREATE TABLE Features
* Primary Keys: Each table uses UUIDs for unique identifiers.
* Foreign Keys: Enforce relationships between users, properties, bookings, etc.
* Constraints:Uniqueness for user emails.
* Role, status, and payment methods as ENUM types.
* Ratings restricted to 1–5.
* Timestamps: Track creation and updates of records.
* Indexes: Optimized for common queries (e.g., email, host ID, property location, booking status).
