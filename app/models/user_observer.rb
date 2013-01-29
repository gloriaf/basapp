class UserObserver < ActiveRecord::Observer
  
  def after_create(user)
    Emailer.welcome_email(user).deliver
  end
  def before_destroy(user)
    Emailer.cancel_email(user).deliver
  end  

end