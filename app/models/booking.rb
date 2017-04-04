class Booking < ActiveRecord::Base
  belongs_to :customer
  belongs_to :cleaner


  validates_presence_of :customer
  validates_presence_of :cleaner
  validates_presence_of :date
end
