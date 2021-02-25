class Battery < ApplicationRecord
   has_many :column
   belongs_to :building
end
