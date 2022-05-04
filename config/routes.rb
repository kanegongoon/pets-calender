Rails.application.routes.draw do
  devise_for :users
  get 'users/index'
  get 'users/show'

  root to: "users#index"
end
