SELECT 
  user_id,
  first_name,
  signup_date,
  country
FROM 
  `lab02_dataset.users`
ORDER BY 
  user_id;

SELECT 
  product_id,
  name,
  price,
  category
FROM 
  `lab02_dataset.products`
WHERE 
  price > 20.00;