OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1701654076763673', '6967623dca3fe40b8d272ef051d1b22b', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end