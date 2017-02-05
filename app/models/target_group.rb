class TargetGroup < ActiveRecord::Base
  belongs_to :panel_provider
  has_many :countries_target_groups
  has_many :countries, through: :countries_target_groups
end
