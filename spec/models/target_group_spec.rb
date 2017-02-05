require 'rails_helper'

RSpec.describe TargetGroup, type: :model do
  describe 'associations' do
   it { is_expected.to have_many :countries }
   it { is_expected.to have_many :countries_target_groups }
   it { is_expected.to belong_to :panel_provider }
 end
end
