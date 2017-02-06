Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
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
