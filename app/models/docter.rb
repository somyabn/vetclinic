class Docter < ActiveRecord::Base
	validates_presence_of :name
	validates_length_of :name, maximum: 35
	validates_length_of :zip, maximum: 5
	validates_length_of :yip, within: 1..100
	has_many :customers, through: :appointments
	has_many :appointments
end
