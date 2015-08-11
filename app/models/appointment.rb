class Appointment < ActiveRecord::Base
  validates_presence_of :DateOfVisit, :reasonForVisit
  belongs_to :customer
  belongs_to :doctor
end
