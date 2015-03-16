class Country < ActiveRecord::Base
  belongs_to :route

	validates :country_name, presence: true

end
