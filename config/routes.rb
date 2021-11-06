Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about_us', to: 'pages#about_us'
  get 'contact_us', to: 'pages#contact_us'
  devise_for :users

  resources :lists, only: [:show, :index]

  resources :services do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index,:destroy,:edit,:update]
end
