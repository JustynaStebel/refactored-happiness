require 'rails_helper'

RSpec.describe CountriesTargetGroup, type: :model do
  describe 'associations' do
   it { is_expected.to belong_to :country }
   it { is_expected.to belong_to :target_group }
 end
end
