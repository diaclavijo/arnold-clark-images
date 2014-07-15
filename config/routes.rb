Arnoldclark::Application.routes.draw do
  root 'cars#index'
  resources :cars, only: [:index]
end
