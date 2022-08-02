Rails.application.routes.draw do
  devise_for :users
  get 'maps/index'
  post 'pages/tag'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :pages, only: [:index, :show, :create, :new]
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#index"
  # devise_scope :user do
  #   get '/'  => 'devise/sessions#destroy'
  # end
end
