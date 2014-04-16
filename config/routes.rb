Blue::Application.routes.draw do

  devise_for :users
  root "companies#index"

  resources :companies do
    resources :members
  end

  resources :events


end
