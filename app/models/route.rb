class Route < ActiveRecord::Base
	has_one :area
	has_one :crag
	accepts_nested_attributes_for :area, :crag
end
