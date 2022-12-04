Rails.application.routes.draw do
  resources :airlines, only:[:index, :show]
  resources :users, only:[:index, :destroy]
  resources :reviews, only:[:index, :update, :create, :destroy]
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
