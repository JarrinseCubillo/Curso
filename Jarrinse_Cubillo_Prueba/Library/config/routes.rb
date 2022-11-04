Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'books#index', as: 'books_path' 
  resources :books
end
