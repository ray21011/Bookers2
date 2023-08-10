Rails.application.routes.draw do
  
  root to: 'homes#top'
  get "homes/about" => "homes#about",as: "about"
  devise_for :users
  
  resources :books, only: [:new, :index, :edit]
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  resources :users, only: [:show, :edit, :index]
  patch 'users/:id' => 'users#update', as: 'update_user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
