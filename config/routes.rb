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
  controller :pages do
    get 'home'
    get 'terms' => :terms
    get 'privacy' => :privacy
    get 'about' => :about
  end
  resources :states
  resources :countries
  resources :global_areas
  resources :ergs do
    get 'members', on: :member
    get 'join', on: :member
    delete 'leave', on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
