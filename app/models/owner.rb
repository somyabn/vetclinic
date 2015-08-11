class Owner < ActiveRecord::Base
	belongs_to :pet
  belongs_to :customer
end
