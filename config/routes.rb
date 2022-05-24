Rails.application.routes.draw do
  # root 'pages#home'
  get 'pages/home'
  devise_for :users
  resources :job_lists
  # get 'home/index'
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'

  # Defines the root path route ("/")
  # root "articles#index"
end
