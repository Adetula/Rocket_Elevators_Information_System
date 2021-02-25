class Building < ApplicationRecord
   belongs_to :customer
   belongs_to :address
   has_many :battery
   has_one :building_detail
end
