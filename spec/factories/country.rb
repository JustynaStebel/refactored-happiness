FactoryGirl.define do
  factory :country do
    country_code "BT"
    panel_provider
    after(:create) do |country|
      country.target_groups << FactoryGirl.create(:target_group)
    end
  end
end
