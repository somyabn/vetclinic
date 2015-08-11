class Pet < ActiveRecord::Base
	validates_presence_of :name, :breed, :age, :weight, :dateOfLastVisit
	has_many :customers , through: :owners
	has_many :owners
end
