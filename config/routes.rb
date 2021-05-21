Rails.application.routes.draw do
  resources :states
  resources :countries
  resources :global_areas
  resources :groups
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
