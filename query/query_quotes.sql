SELECT to_char(creation_date, 'YYYY-MM') as "Month",count(contact_id) as ContactPerMonth
  FROM fact_contacts