class Emailer < ActionMailer::Base
  default from: "mgfernandez@pabilos.com"

  def welcome_email(user) 
    @user = user
    mail(:to => @user.email, :subject => "Welcome to basapp!")
  end
  
  def cancel_email(user) 
    @user = user
    mail(:to => @user.email, :subject => "Bye to basapp!")
  end

end
