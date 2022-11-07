# == Route Map
#

Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root 'devise/sessions#new'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :companies do 
    resources :companies, only: [:index, :show, :new, :create, :update, :delete]
  end
  namespace :events do
    resources :events, only: [:index, :show, :new, :create, :update, :delete]
  end
end
