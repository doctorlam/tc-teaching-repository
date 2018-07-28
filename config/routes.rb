Rails.application.routes.draw do
  resources :courses
  devise_for :users
  resources :topics
  resources :categories
  resources :entries
  resources :pages
  
 authenticated :user do

  root "static_pages#portal"
end 
unauthenticated :user do
  root "pages#index"
end
  get "static_pages/portal"
    get 'pages/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
