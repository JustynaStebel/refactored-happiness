Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "locations/:country_code", to: "locations#show"
      get "target_groups/:country_code", to: "target_groups#show"
      post "evaluate_target", to: "price_generator#evaluate_target"
    end
    namespace :public do
      get "locations/:country_code", to: "locations#show"
      get "target_groups/:country_code", to: "target_groups#show"
    end
  end
end
