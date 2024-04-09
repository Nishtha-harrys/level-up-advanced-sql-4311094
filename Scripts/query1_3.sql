-- Get a list of all sales and all customers even if some of the data has been removed.

-- why not the below query? (it gives same results)
SELECT *
FROM sales AS s
FULL JOIN customer AS c
  ON s.customerId = c.customerId;

-- all customers and their sales
SELECT * 
FROM customer as c
INNER JOIN sales as s
  ON c.customerId = s.customerId
UNION
-- customers who have no sales
SELECT *
FROM customer as c
LEFT JOIN sales as s
  ON c.customerId = s.customerId
WHERE s.salesId IS NULL
UNION
-- sales with missing customer data
SELECT * 
FROM sales as s
LEFT JOIN customer as c
  ON c.customerId = s.customerId
WHERE c.customerId IS NULL;