class Area < ActiveRecord::Base
  belongs_to :route
	validates :area_name, presence: true
end
