select concat(to_char(to_timestamp (extract(month from dwh_created_at)::text, 'MM'), 'TMMonth'), ' ', extract(year from dwh_created_at)) as MonthYearStr, 
    count(*) as Nbcontact,
	concat(extract(year from dwh_created_at),' ', to_char(to_timestamp (extract(month from dwh_created_at)::text, 'MM'), 'TMMM')) as YearMonthInt
from fact_contacts
group by MonthYearStr, YearMonthInt
order by YearMonthInt;



