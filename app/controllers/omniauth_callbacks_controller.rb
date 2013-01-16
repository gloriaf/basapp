class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  def twitter
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.persisted?
     flash.notice = "Signed in!"
      sign_in_and_redirect user 
    else
      session["devise.user_attributes"] = user.attributes
      redirect_to new_user_registration_url
    end
  end
  
  def linkedin
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.persisted?
     flash.notice = "Signed in!"
      sign_in_and_redirect user 
    else
      session["devise.user_attributes"] = user.attributes
      redirect_to new_user_registration_url
    end
  end

  alias_method :twitter, :linkedin

  def github
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.persisted?
     flash.notice = "Signed in!"
      sign_in_and_redirect user 
    else
      session["devise.user_attributes"] = user.attributes
      redirect_to new_user_registration_url
    end
  end
  
  def failure
#    redirect_to root_path, :alert => "Authentication error: #{params[:message].humanize}"
    redirect_to root_path, :alert => "Authentication error #{params[:message]}"
  end
  
end