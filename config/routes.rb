Rails.application.routes.draw do
  resources :ideas, only: %i[index show new create]
  resources :categories, only: %i[index show new create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
