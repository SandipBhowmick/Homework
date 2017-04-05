class City < ActiveRecord::Base
	has_and_belongs_to_many :clener

	validates_presence_of :city_name
	validates_uniqueness_of :city_name
end
