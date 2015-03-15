class Route < ActiveRecord::Base
	has_one :area
	accepts_nested_attributes_for :area
end
