class City < ActiveRecord::Base
	validates_presence_of :city_name
	validates_uniqueness_of :city_name
end
