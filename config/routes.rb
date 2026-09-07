Rails.application.routes.draw do
  root "home#index"
 
  resources :bookings, only: [:new, :create, :show]
 
  get "up" => "rails/health#show", as: :rails_health_check
end
 