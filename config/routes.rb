Rails.application.routes.draw do
  get 'toppages/index'
  root to: "toppages#index"
  get 'users/new'
  get 'users/create'
  root to: 'tasks#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create]
  resources :tasks
end
