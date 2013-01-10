Basapp::Application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}

  root to: 'static_pages#home'

  match '/help',    to: 'static_pages#help'
  match '/contact', to: 'static_pages#contact'
  match '/aboutUs', to: 'static_pages#aboutUs'

end
