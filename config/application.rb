require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RiTMo
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.time_zone = 'Rome'
    Rails.application.config.i18n.default_locale = :it
    config.i18n.available_locales = %i[it en]
    config.i18n.enforce_available_locales = true
    config.i18n.default_locale = :it
    config.i18n.locale = :it

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end

end

MYAPP_VERSION = 1.0
