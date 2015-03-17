class Route < ActiveRecord::Base
	has_one :area
	has_one :crag
	has_one :country
	accepts_nested_attributes_for :area, allow_destroy: true
	accepts_nested_attributes_for :crag, allow_destroy: true
	accepts_nested_attributes_for :country, allow_destroy: true

	validates :route_name, presence: true

end
