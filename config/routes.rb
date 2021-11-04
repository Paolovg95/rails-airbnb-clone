Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  resources :lists, only: [:show, :index]

  resources :services do
    resources :bookings, only: [:create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
