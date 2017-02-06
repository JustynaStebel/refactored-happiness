panel1 = PanelProvider.create(code: Faker::Code.ean)
panel2 = PanelProvider.create(code: Faker::Code.ean)
panel3 = PanelProvider.create(code: Faker::Code.ean)

country1 = Country.create(panel_provider_id: panel1.id, country_code: Faker::Address.country_code)
country2 = Country.create(panel_provider_id: panel2.id, country_code: Faker::Address.country_code)
country3 = Country.create(panel_provider_id: panel3.id, country_code: Faker::Address.country_code)

location_group1 = LocationGroup.create(name: Faker::Pokemon.location, panel_provider_id: panel1.id, country_id: country1.id)
location_group2 = LocationGroup.create(name: Faker::Pokemon.location, panel_provider_id: panel2.id, country_id: country2.id)
location_group3 = LocationGroup.create(name: Faker::Pokemon.location, panel_provider_id: panel3.id, country_id: country3.id)
location_group4 = LocationGroup.create(name: Faker::Pokemon.location, panel_provider_id: panel1.id, country_id: country1.id)

20.times do
  LocationGroup.all.sample.locations.create(
    name: Faker::Address.city,
    external_id: Faker::Number.number(3),
    secret_code: Faker::Code.isbn,
  )
end

4.times do
  providers = PanelProvider.all
  provider = providers.delete(providers.sample) || PanelProvider.first.id
  target_group1 = TargetGroup.create(name: Faker::Team.name, external_id: Faker::Number.number(3), secret_code: Faker::Code.isbn, panel_provider_id: provider)
  target_group1.countries << Country.all.sample
  target_group1_child_1 = TargetGroup.create(name: Faker::Team.name, external_id: Faker::Number.number(3), secret_code: Faker::Code.isbn, parent_id: target_group1.id, panel_provider_id: provider)
  target_group1_child_1.countries << Country.all.sample
  target_group1_child_1_2 = TargetGroup.create(name: Faker::Team.name, external_id: Faker::Number.number(3), secret_code: Faker::Code.isbn, parent_id: target_group1_child_1.id, panel_provider_id: provider)
  target_group1_child_1_2.countries << Country.all.sample
  target_group1_child_1_2_2 = TargetGroup.create(name: Faker::Team.name, external_id: Faker::Number.number(3), secret_code: Faker::Code.isbn, parent_id: target_group1_child_1_2.id, panel_provider_id: provider)
  target_group1_child_1_2_2.countries << Country.all.sample
end
