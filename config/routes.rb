Rails.application.routes.draw do
  resources :courses
  devise_for :users
  resources :topics
  resources :categories
  resources :entries
  resources :pages

  root "pages#index"
  get 'pages/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
