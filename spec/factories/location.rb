FactoryGirl.define do
  factory :location do
    name "MyText"
    external_id 123
    secret_code "1234f5"
    after(:create) do |group|
      FactoryGirl.create_list(:location_group, 1, location: group)
    end
  end
end
