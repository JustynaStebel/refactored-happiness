require 'rails_helper'

RSpec.describe Location, type: :model do
  describe 'associations' do
    it { is_expected.to have_many :location_groups }
    it { is_expected.to have_many :locations_location_groups }
  end
end
