class ChartsController < ApplicationController
    before_action :authenticate_user!
    def chart
        conn = PG::Connection.open( host: "localhost", user: "postgres", password: "", dbname: "dwh_development")
        @data1 = conn.exec("select concat(to_char(to_timestamp (extract(month from dwh_created_at)::text, 'MM'), 'TMMonth'), ' ', extract(year from dwh_created_at)) as MonthYearStr, count(*) as Nbcontact, concat(extract(year from dwh_created_at),' ', to_char(to_timestamp (extract(month from dwh_created_at)::text, 'MM'), 'TMMM')) as YearMonthInt from fact_contacts group by MonthYearStr, YearMonthInt order by YearMonthInt;") 
        @x1 = @data1.column_values(0)
        @y1 = @data1.column_values(1)

        @data2 = conn.exec("select concat(to_char(to_timestamp (extract(month from dwh_creation_at)::text, 'MM'), 'TMMonth'), ' ', extract(year from dwh_creation_at)) as MonthYearStr, count(*) as NbQuotes, concat(extract(year from dwh_creation_at),' ', to_char(to_timestamp (extract(month from dwh_creation_at)::text, 'MM'), 'TMMM')) as YearMonthInt from fact_quotes group by MonthYearStr, YearMonthInt order by YearMonthInt;") 
        @x2 = @data2.column_values(0)
        @y2 = @data2.column_values(1)

        @data3 = conn.exec("SELECT dwh_customer_company_name, nb_elevators FROM dim_customers where nb_elevators > 0 GROUP BY dwh_customer_company_name, nb_elevators order by nb_elevators;") 
        @x3 = @data3.column_values(0)
        @y3 = @data3.column_values(1)
    end

end
