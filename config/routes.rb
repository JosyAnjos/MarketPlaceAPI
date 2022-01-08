Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'tokens/create'
    end
  end
  namespace :api, defaults: { format: :json} do
    namespace :v1 do
      resources :products, only: %i[create destroy index show update]
      resources :tokens, only: %i[create]
      resources :users, only: %i[create destroy show update]
    end
  end
end
