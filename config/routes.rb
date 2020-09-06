Rails.application.routes.draw do
  resources :ideas, only: [:index, :show, :create]
  resources :categories, only: [:index, :show, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
