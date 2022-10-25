Rails.application.routes.draw do
  get 'questions/show'
  get 'quizzs/index'
  get 'quizzs/show'
  get 'locations/index'
  get 'steps/index'

  # get 'aids/index'
  # get 'aids/show'
  # get 'emergencies/index'
  # get 'emergencies/show'

  devise_for :users
  root to: "pages#home"
  resources :pages , only: %i[index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :emergencies, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :aids, only: [:index, :show]
  resources :locations, only: [:index]

  resources :quizzs, only: %i[index show]
  resources :questions , only: %i[show]

end
