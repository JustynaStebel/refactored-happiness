FactoryGirl.define do
  factory :target_group do
    name "MyText"
    external_id 456
    secret_code "1234rff5"
    panel_provider
  end
end
