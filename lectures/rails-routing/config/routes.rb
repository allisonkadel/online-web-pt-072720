Rails.application.routes.draw do
  resources :lists, only: [:new, :create, :index]
  resources :items, except: [:destroy]
  resources :lists do
    resources :items, only: [:index, :new]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
