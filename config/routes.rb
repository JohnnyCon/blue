Blue::Application.routes.draw do

  root "companies#index"

  resources :companies do
    resources :members
  end

  resources :events


end
