class LocationGroup < ActiveRecord::Base
  belongs_to :country
  belongs_to :panel_provider
  has_many :locations_location_groups
  has_many :locations, through: :locations_location_groups
end
