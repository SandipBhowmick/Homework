class Cleaner < ActiveRecord::Base
	has_and_belongs_to_many :city

	validates_presence_of :first_name
	validates_presence_of :last_name
	validates_presence_of :quality_score
	validates_numericality_of :quality_score, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5, :message => "blah"
end
