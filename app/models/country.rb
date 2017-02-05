class Country < ActiveRecord::Base
  belongs_to :panel_provider
  has_one :location_group
  has_many :countries_target_groups
  has_many :target_groups, through: :countries_target_groups
end
