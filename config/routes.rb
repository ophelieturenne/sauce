Rails.application.routes.draw do
  # get 'emergencies/index'
  # get 'emergencies/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :emergencies, only: [:index, :show, :create, :edit, :destroy]
  resources :Aids, only: [:index, :show]
end
