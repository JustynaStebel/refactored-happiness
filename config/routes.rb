Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "locations#show"
      get "target_groups#show"
      post "price_generator#evaluate_target"
    end
    namespace :public do
      get "locations#show"
      get "target_groups#show"
    end
  end
end
