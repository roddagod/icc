Rails.application.routes.draw do
  resources :icc_events
  namespace :admin do
      resources :users
      resources :icc_events
	root to: "users#index"
    end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
