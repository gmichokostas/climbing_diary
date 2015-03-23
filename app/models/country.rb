class Country < ActiveRecord::Base
  has_many :routes
  before_save { self.name = name.capitalize }
  validates :name, presence: true, uniqueness: true
end
