class Country < ActiveRecord::Base
  validates :name, presence: true
  has_many :routes
end
