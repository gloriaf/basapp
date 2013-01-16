Basapp::Application.routes.draw do

  root to: 'static_pages#home'

  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  
  match '/auth/failure', to: 'omniauth_callbacks#failure'

  match '/help',    to: 'static_pages#help'
  match '/contact', to: 'static_pages#contact'
  match '/aboutUs', to: 'static_pages#aboutUs'

end
