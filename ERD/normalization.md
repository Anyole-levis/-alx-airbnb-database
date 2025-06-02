## 📊 Normalization Process
# 🔹 1NF (First Normal Form)
      Must contain primary <br>
      Must contain atomic values<br> 
* All attributes are atomic—no repeating groups or arrays and all have primary keys.<br>
  ✅ satisfies 1NF.

# 🔹 2NF (Second Normal Form)
      All non-key attributes must depend whole on the primary key no partial depencies<br>
* Remove partial dependencies.<br>
 ✅ Since all your tables use UUID primary keys, and non-key attributes depend entirely on the primary key, there are no partial 
 dependencies.

# 🔹 3NF (Third Normal Form)
* Remove transitive dependencies.<br>
  ✅ Let’s double-check:
 
# 🎓 Analysis:
 # Table	Check
* User	All non-key attributes depend only on user_id.
* Property	All non-key attributes depend only on property_id. host_id is a foreign key, not a transitive dependency.
* Booking	All non-key attributes depend only on booking_id.
* Payment	All non-key attributes depend only on payment_id.
* Review	All non-key attributes depend only on review_id.
* Message	All non-key attributes depend only on message_id.<br>

No transitive dependencies found. ✅


