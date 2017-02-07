FactoryGirl.define do
  factory :country do
    country_code "BT"
    panel_provider
    after(:create) do |group|
      FactoryGirl.create_list(:target_group, 5, country: group)
    end
  end
end
