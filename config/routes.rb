Blue::Application.routes.draw do

  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  root "companies#index"

  resources :companies do
    resources :members
  end

  resources :events


end
