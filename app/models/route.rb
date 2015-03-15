class Route < ActiveRecord::Base
	has_one :area
	has_one :crag
	has_one :country
	accepts_nested_attributes_for :area, :crag, :country
end
