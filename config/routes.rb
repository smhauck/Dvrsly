Rails.application.routes.draw do
  resources :memberships
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  get 'sessions/create'
  get 'sessions/destroy'

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
