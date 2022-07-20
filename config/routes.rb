Rails.application.routes.draw do
  root to: 'todos#index'

  resources :todos, only: [:index, :new, :create] do
    resource :completion, only: [:create, :destroy]
  end

  resources :sessions, only: [:new, :create]
end
