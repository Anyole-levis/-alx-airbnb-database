SELECT property_id, name, description,
FROM Property
WHERE property_id IN (
  SELECT property_id
  FROM Review 
  GROUP BY property_id
  HAVING AVG(rating) > 4
);
  
