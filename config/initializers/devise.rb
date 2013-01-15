# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
  # ==> Mailer Configuration
  # Configure the e-mail address which will be shown in Devise::Mailer,
  # note that it will be overwritten if you use your own mailer class with default "from" parameter.
  config.mailer_sender = "mgfernandez@pabilos.com"

  # Configure the class responsible to send e-mails.
  # config.mailer = "Devise::Mailer"

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [ :email ]

  config.strip_whitespace_keys = [ :email ]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 10

  config.reconfirmable = true

  config.password_length = 8..128

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete
  
  config.omniauth :twitter,  TWITTER_CONSUMER_KEY,  TWITTER_CONSUMER_SECRET
  config.omniauth :linkedin, LINKEDIN_CONSUMER_KEY, LINKEDIN_CONSUMER_SECRET
  config.omniauth :github,   GITHUB_KEY,            GITHUB_SECRET
end
