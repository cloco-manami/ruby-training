Rails.application.routes.draw do
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show'
  put 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy'
end
