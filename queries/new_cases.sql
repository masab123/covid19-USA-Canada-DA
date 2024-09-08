SELECT 
EXTRACT (YEAR FROM date) as year, 
EXTRACT (MONTH FROM date) as month,
country_name,
MAX(new_confirmed) as total_new_confirmed
FROM `bigquery-public-data.covid19_open_data.covid19_open_data` 
WHERE country_name IN('Canada', 'United States of America') 
AND (new_confirmed is NOT NULL)
GROUP BY year, month, country_name
ORDER BY year, month
LIMIT 1000