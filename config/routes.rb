Rails.application.routes.draw do

  resources :books, only: [:create, :index, :show, :edit, :destroy]
  patch 'books/:id' => 'books#update', as: 'update_book'
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
