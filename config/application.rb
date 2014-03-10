require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env)

module MesonicBrowser
  class Application < Rails::Application

    config.hobo.dont_emit_deprecated_routes = true
    config.assets.precompile += %w(front.css front.js)
    config.time_zone = 'Vienna'

    config.i18n.default_locale = :de
    I18n.enforce_available_locales = false
    I18n.locale = :de
  end
end
