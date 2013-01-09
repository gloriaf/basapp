Basapp::Application.routes.draw do
  devise_for :users

  root to: 'static_pages#home'

  match '/help',    to: 'static_pages#help'
  match '/contact', to: 'static_pages#contact'
  match '/aboutUs', to: 'static_pages#aboutUs'

end
