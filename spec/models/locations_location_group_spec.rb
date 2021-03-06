require 'rails_helper'

RSpec.describe LocationsLocationGroup, type: :model do
  it { is_expected.to belong_to :location }
  it { is_expected.to belong_to :location_group }
end
