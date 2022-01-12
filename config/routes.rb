Rails.application.routes.draw do
  resources :posts
  get '/notice_clear', to: 'application#notice_clear'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
