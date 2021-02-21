class QuotesController < ApplicationController
    def index
    
    end

    def create
        
        #pp params
     
        quotes = Quote.new
        quotes.name = params[:name]
        quotes.email_quote= params[:email]
        quotes.phone= params[:phone]
        quotes.building_type = params[:building_type]
        quotes.number_apartments_residential = params[:number_apartments_residential]
        quotes.number_floors_residential = params[:number_floors_residential]
        quotes.number_basements_residential = params[:number_basements_residential]
        quotes.number_companies = params[:number_companies]
        quotes.number_floors_commercial = params[:number_floors_commercial]
        quotes.number_basements_commercial = params[:number_basements_commercial]
        quotes.number_parking_commercial = params[:number_parking_commercial]
        quotes.number_elevators = params[:number_elevators]
        quotes.number_corporate = params[:number_corporate]
        quotes.number_floors_corporate = params[:number_floors_corporate]
        quotes.number_basements_corporate = params[:number_basements_corporate]
        quotes.number_parking_corporate = params[:number_parking_corporate]
        quotes.number_occupants_corporate = params[:number_occupants_corporate]
        quotes.number_of_corporations = params[:number_of_corporations]
        quotes.number_floors_hydrid = params[:number_floors_hydrid]
        quotes.number_basements_hybrid = params[:number_basements_hybrid]
        quotes.number_parking_hybrid = params[:number_parking_hybrid]
        quotes.number_occupants_hybrid =params[:number_occupants_hybrid]
        quotes.number_hours_act = params[:number_hours_act]
        quotes.service_level = params[:service_level]
        quotes.elevators_required = params[:elevators_required]
        quotes.elevator_unit_price = params[:elevator_unit_price]
        quotes.elevator_total_price = params[:elevator_total_price]
        quotes.installation_fees = params[:installation_fees]
        quotes.final_price = params[:final_price]
        quotes.save!
    end
    def quotes_
        render '/pages/quote'
    end
  
    def show
        redirect_to '/admin/quote'
    end
end
