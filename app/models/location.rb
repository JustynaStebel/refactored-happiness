class Location < ActiveRecord::Base
  has_many :locations_location_groups
  has_many :location_groups, through: :locations_location_groups
end
