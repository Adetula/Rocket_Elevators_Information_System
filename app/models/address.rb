class Address < ApplicationRecord
   has_one :Building
   has_one :Customer
end
