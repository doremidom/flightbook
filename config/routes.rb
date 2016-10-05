Rails.application.routes.draw do
  get 'flights/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'flights#index'

  resources :flights, only: [:index]


end
