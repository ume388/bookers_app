Rails.application.routes.draw do
  root to: 'books#top'
  get 'books/:id' => 'books#show', as: 'book'
  resources :books
end
