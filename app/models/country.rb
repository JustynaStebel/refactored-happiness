class Country < ActiveRecord::Base
  belongs_to :panel_provider
  has_one :location_group
end