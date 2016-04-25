Devise.setup do |config|
  
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..72
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete

  config.omniauth :facebook, "1701654076763673", "6967623dca3fe40b8d272ef051d1b22b"

  config.secret_key = '27a4d455848f0acfb6dbadb12c02b9d7e607c65a39d9d7cebeeb511b59dcc759734d848a147738d408cb9dece27e13b7cb6a9150b19a64da0b0929d8b3492826'


end
