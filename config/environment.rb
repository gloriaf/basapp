# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Basapp::Application.initialize!

Basapp::Application.configure do
  config.active_record.observers = :user_observer
end