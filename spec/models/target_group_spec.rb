require 'rails_helper'

RSpec.describe TargetGroup, type: :model do
  describe 'associations' do
   it { is_expected.to have_many :countries }
   it { is_expected.to have_many :countries_target_groups }
   it { is_expected.to belong_to :panel_provider }
 end
 describe 'validations' do
   it { is_expected.to validate_presence_of :name }
   it { is_expected.to validate_presence_of :external_id }
   it { is_expected.to validate_presence_of :secret_code }
 end
end
