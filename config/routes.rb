Rails.application.routes.draw do

  get 'people/show'
  get 'people/new'
  get 'people/create'
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'pages#home'
  resources :assos, only:[:show, :new, :create]
  resources :people, only: [:show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
