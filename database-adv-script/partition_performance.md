## 📝 Partitioning Performance Report – Booking Table
# 📌 Objective:
To evaluate the performance benefits of range partitioning by start_date on the Booking table in order to optimize query speed for date-based filtering.

# 🏗️ Test Setup:
Two tables created:,<br>
Booking_partitioned: Partitioned by range on start_date (Q1 and Q2 of 2025).<br>
Booking_non_partitioned: Standard table with no partitions.<br>
Inserted large volume of test data (~100,000 rows) spread evenly across Q1 and Q2 2025.<br>
Both tables used identical schema (except for partitioning).<br>

# ✅ Improvements Noted:
Faster query execution due to scanning only the relevant partition instead of the full table.<br>
Lower memory and CPU usage, improving database efficiency.<br>
Better scalability as more partitions can be added without affecting past data performance.<br>
Improved maintainability by logically separating data by date.<br>

# 🔚 Conclusion:
Partitioning the Booking table by start_date provided significant performance gains for date-based queries. It is especially useful for systems with time-based data like bookings, logs, or orders. Partitioning is recommended as a scalable solution for maintaining high performance as data volume grows.

