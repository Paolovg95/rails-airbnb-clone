Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about_us', to: 'pages#about_us'
  get 'contact_us', to: 'pages#contact_us'
  devise_for :users

  resources :lists, only: [:show, :index]

  resources :services ,only: [:new,:create,:show, :index] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index]
  # namespace :account do
  #   resources :offers
  #   resources :bookings
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
