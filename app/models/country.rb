class Country < ActiveRecord::Base
  has_many :routes
  validates :name, presence: true

  before_save { |country| country.name = country.name.capitalize }

end
