Rails.application.routes.draw do
  devise_for :users
  resources :topics
  resources :categories
  resources :entries

  root "entries#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
