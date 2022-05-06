Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
  resources :users, only: [:index, :show]
  resources :calendars
  resources :pet_informations, only: [:index, :new, :create]

end
