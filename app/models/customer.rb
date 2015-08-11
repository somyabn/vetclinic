class Customer < ActiveRecord::Base
  has_many :doctors, through: :appointments 
  has_many :appointments
  has_many :pets , through: :owners
  has_many :owners
end
