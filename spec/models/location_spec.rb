require 'rails_helper'

RSpec.describe Location, type: :model do
  describe 'associations' do
    it { is_expected.to have_many :location_groups }
    it { is_expected.to have_many :locations_location_groups }
  end
  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :external_id }
    it { is_expected.to validate_presence_of :secret_code }
  end
end
