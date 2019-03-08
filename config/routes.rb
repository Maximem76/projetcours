Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'articles/index'
  post 'messages', to: 'messages#create'
  #devise_for :users
  root 'articles#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tags, only: [:show]
  resources :comments
  resources :articles, except: [:list]
  get '/pages/chat'

  authenticated :user do
    root to: 'articles#index', as: 'index'
  end
  unauthenticated :user do
    root 'articles#index'
  end
end

