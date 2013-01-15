Basapp::Application.configure do
 
  config.cache_classes = false

  config.whiny_nils = true

  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  config.action_mailer.raise_delivery_errors = false

  config.active_support.deprecation = :log

  config.action_dispatch.best_standards_support = :builtin

  config.active_record.mass_assignment_sanitizer = :strict

  config.active_record.auto_explain_threshold_in_seconds = 0.5

  config.assets.compress = false

  config.assets.debug = true
  
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  
  TWITTER_CONSUMER_KEY="kLbSUQgAzuqp719BiXKxw"
  TWITTER_CONSUMER_SECRET="e5XkThsq04HuTdeokXnjMQNV3vtmti3UVXBCPr4c1bY"

  LINKEDIN_CONSUMER_KEY="x0fyza903qp4"
  LINKEDIN_CONSUMER_SECRET="7t2tn3x7o13W2Gvt"

  GITHUB_KEY="68084d44ecba0c9ac416"
  GITHUB_SECRET="c2f4c15c51cb413dfaec3d21cd73d1da4e968cdc"
end
