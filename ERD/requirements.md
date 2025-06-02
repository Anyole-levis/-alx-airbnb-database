#  Entities and Attributes


## User
* user_id:&nbsp; (Primary Key, UUID, Indexed)
* first_name:&nbsp; VARCHAR, NOT NULL
* last_name: &nbsp;VARCHAR,&nbsp; NOT NULL
* email: &nbsp;VARCHAR, UNIQUE, NOT NULL
* Password_hash:&nbsp; VARCHAR, NOT NULL
* phone_number:&nbsp; VARCHAR, NULL
* role:&nbsp; ENUM (guest, host, admin), NOT NULL
* created_at: &nbsp;TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

  
## Property
* property_id:&nbsp; Primary Key, UUID, Indexed
* host_id:&nbsp; Foreign Key, references User(user_id)
* name:&nbsp; VARCHAR, NOT NULL
* description:&nbsp; TEXT, NOT NULL
* location: &nbsp;VARCHAR, NOT NULL
* pricepernight:&nbsp; DECIMAL, NOT NULL
* created_at: &nbsp;TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
* updated_at: &nbsp;TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP


## Booking
* booking_id: Primary Key, UUID, Indexed
* property_id: Foreign Key, references Property(property_id)
* user_id: Foreign Key, references User(user_id)
* start_date: DATE, NOT NULL
* end_date: DATE, NOT NULL
* total_price: DECIMAL, NOT NULL
* status: ENUM (pending, confirmed, canceled), NOT NULL
* created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

  
## Payment
* payment_id: Primary Key, UUID, Indexed
* booking_id: Foreign Key, references Booking(booking_id)
* amount: DECIMAL, NOT NULL
* payment_date: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
* payment_method: ENUM (credit_card, paypal, stripe), NOT NULL

  
## Review
* review_id: Primary Key, UUID, Indexed
* property_id: Foreign Key, references Property(property_id)
* user_id: Foreign Key, references User(user_id)
* rating: INTEGER, CHECK: rating >= 1 AND rating <= 5, NOT NULL
* comment: TEXT, NOT NULL
* created_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

  
## Message
* message_id: Primary Key, UUID, Indexed
* sender_id: Foreign Key, references User(user_id)
* recipient_id: Foreign Key, references User(user_id)
* message_body: TEXT, NOT NULL
* sent_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP


# Relationship
* User  → (Property (one host can have many properties)
* User  → Booking (one user can have many bookings as a guest)
* Property →  Booking (one property can have many bookings)
* Booking  →  Payment (each booking has one payment)
* User  →  Review (users can leave many reviews)
* Property  →  Review (properties can have many reviews)
* User  →  Message (users can send many messages)

## My ER Diagram
 ![ERD Diagram](ERD/ERD_Diagram.png)

