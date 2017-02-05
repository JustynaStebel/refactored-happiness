class Location < ActiveRecord::Base
  has_many :locations_location_groups
  has_many :location_groups, through: :locations_location_groups

  validates_presence_of :name, :external_id, :secret_code
end
