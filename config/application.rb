require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Cpv3
  class Application < Rails::Application

    config.active_record.raise_in_transactional_callbacks = true

    config.action_mailer.smtp_settings = {
        address: "mail.cuantopido.cl",
        port: 587,
        domain: "cuantopido.cl",
        user_name: "contacto@cuantopido.cl",
        password: "1112131415",
        authentication: :plain,
        enable_starttls_auto: false
    }

    config.action_mailer.default_url_options = {
        host: "cuantopido.cl"
    }

  end
end
