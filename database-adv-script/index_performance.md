## INDEX PERFORMANCE ANALYSIS 

# objective 
   To analyze the impact of adding indexes on the frequently used columnns 
   
# 📈 Conclusion
Adding indexes on Review.property_id and Booking.user_id dramatically reduced table scan time.

Queries now use Index Scans instead of Sequential Scans.

Performance improved especially on large datasets.
