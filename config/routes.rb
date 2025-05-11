Rails.application.routes.draw do
  get 'homes/top'
  get 'new' => 'books#new'
  get 'show' => 'books#show'
  get 'edit' => 'books#edit'
  get 'destroy' => 'books#destroy'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
