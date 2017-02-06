class TargetGroup < ActiveRecord::Base
  belongs_to :panel_provider
  has_many :countries_target_groups
  has_many :countries, through: :countries_target_groups
  has_one :parent, class_name: "TargetGroup", foreign_key: :parent_id

  validates_presence_of :name, :external_id, :secret_code
end
