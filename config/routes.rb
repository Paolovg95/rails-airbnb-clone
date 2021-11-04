Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about_us', to: 'pages#about_us'
  get 'contact_us', to: 'pages#contact_us'

  resources :services
  resources :lists
  resources :bookings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
