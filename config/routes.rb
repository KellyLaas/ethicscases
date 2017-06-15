Rails.application.routes.draw do
  root 'authors#index'
  resources :cases, :authors, :subjects

  # For details on the DSL available within this file, see
  # http://guides.rubyonrails.org/routing.html
end
