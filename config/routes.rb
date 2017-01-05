Rails.application.routes.draw do
  root 'static_pages#home'

  resources :minus_operations, except: [:index]
  resources :plus_operations, except: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
