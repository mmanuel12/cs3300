Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  root "projects#index"
  resources :projects
  root to: 'home#index'
end


