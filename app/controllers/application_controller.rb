class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale
    
#  def after_sign_in_path_for(resource)
#    tasks_path
#  end

private
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  
  def extract_locale_from_tld
    parsed_locale = request.host.split('.').last
    I18n.available_locales.include?(parsed_locale.to_sym) ? parsed_locale  : nil
  end
  
  def default_url_options(options = {})
    {locale: I18n.locale}
  end
end
