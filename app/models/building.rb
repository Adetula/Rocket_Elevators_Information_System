class Building < ApplicationRecord
   belongs_to :customer
   has_one :address
   has_many :battery
   has_many :building_detail
end
