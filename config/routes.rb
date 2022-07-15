Rails.application.routes.draw do
  root to: 'todos#index'

  resources :todos, only: [:index, :new, :create]
  resources :sessions, only: [:new, :create]
end
