Rails.application.routes.draw do
  # get 'books/index'
  # get 'books/create'
  resources :books, only: [:index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
