FactoryGirl.define do
  factory :location do
    name "MyText"
    external_id 123
    secret_code "1234f5"
    after(:create) do |location|
      location.location_groups << FactoryGirl.create(:location_group)
    end
  end
end
