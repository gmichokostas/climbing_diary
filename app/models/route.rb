class Route < ActiveRecord::Base
	has_one :area
	has_one :crag
	has_one :country
	accepts_nested_attributes_for :area
	accepts_nested_attributes_for :crag
	accepts_nested_attributes_for :country

	validates :route_name, presence: true

end
