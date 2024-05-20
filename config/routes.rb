Rails.application.routes.draw do
  root "pages#index"
  namespace :api do
    namespace :v1 do
    resources :airlines, param: :slug
    resources :reviews, only: [:create, :destroy]
    end
  end
  # catch-all match GET request to index for all unmatch request 
  get "*path", to: "pages#index", via: :all
end
