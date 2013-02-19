Basapp::Application.routes.draw do

  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do

    match '/help',    to: 'static_pages#help'
    match '/contact', to: 'static_pages#contact'
    match '/aboutUs', to: 'static_pages#aboutUs'

    devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}

    match '/users/auth/failure', to: 'omniauth_callbacks#failure'

    resources :tasks do
      match "execute" => "tasks#execute"
    end
    resources :projects

    root to: 'static_pages#home'
    
    match '*path', to: redirect { |params, request| "/#{params[:locale]}" }

  end
  
  match '', to: redirect("/#{I18n.default_locale}")
  match '/*locale/*path', to: redirect("/#{I18n.default_locale}/%{path}")
  match '/*path', to: redirect("/#{I18n.default_locale}/%{path}")
  
end
