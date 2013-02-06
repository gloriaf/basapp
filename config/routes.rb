Basapp::Application.routes.draw do

  root to: 'static_pages#home'
  match '/help',    to: 'static_pages#help'
  match '/contact', to: 'static_pages#contact'
  match '/aboutUs', to: 'static_pages#aboutUs'

  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  get "users/index"

  match '/users/auth/failure', to: 'omniauth_callbacks#failure'

  resources :tasks do
    match "execute" => "tasks#execute"
  end

end
