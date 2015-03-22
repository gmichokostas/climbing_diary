class Route < ActiveRecord::Base
  belongs_to :country
  validates :name, presence: true
  validates :area, presence: true
  validates :country, presence: true
end
