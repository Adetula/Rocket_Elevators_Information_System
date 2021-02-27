  
SELECT  dwh_customer_company_name, nb_elevators
FROM dim_customers
WHERE nb_elevators> 0
GROUP BY dwh_customer_company_name,nb_elevators
order by nb_elevators;