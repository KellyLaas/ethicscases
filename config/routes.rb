Rails.application.routes.draw do
  get 'case/index'
  get 'cases/:case_token', to 'case#index', constraints: {
    security_token: [0-9a-f]{10,}/}


  get 'home/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
