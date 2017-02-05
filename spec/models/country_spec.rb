require 'rails_helper'

RSpec.describe Country, type: :model do
  describe 'associations' do
   it { is_expected.to have_many :target_groups }
   it { is_expected.to have_many :countries_target_groups }
   it { is_expected.to have_one :location_group }
   it { is_expected.to belong_to :panel_provider }
 end
 describe 'validations' do
   it { is_expected.to validate_presence_of :country_code }
 end
end
