class Customer < ActiveRecord::Base
	validates_presence_of :first_name ,:last_name, :phone_number
	validates_uniqueness_of :phone_number 

end
