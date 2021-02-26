select concat(to_char(to_timestamp (extract(month from dwh_creation_at)::text, 'MM'), 'TMMonth'), ' ', extract(year from dwh_creation_at)) as MonthYearStr, 
    count(*) as NbQuotes,
	concat(extract(year from dwh_creation_at),' ', to_char(to_timestamp (extract(month from dwh_creation_at)::text, 'MM'), 'TMMM')) as YearMonthInt
from fact_quotes 
group by MonthYearStr, YearMonthInt
order by YearMonthInt;