Rails.application.routes.draw do
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  devise_for :users
  root :to => 'homes#top'
  get 'home/about' => 'homes#about'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'

end
