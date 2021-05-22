Rails.application.routes.draw do
  resources :users
  root "pages#home"
  get 'pages/home'
  get 'pages/terms'
  get 'pages/privacy'
  get 'pages/about'
  resources :states
  resources :countries
  resources :global_areas
  resources :ergs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
