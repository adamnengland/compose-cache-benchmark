require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ComposeCacheBenchmark
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Memcache Localhost
    #config.cache_store = :dalli_store,["localhost:11211"],{:failover => true,:socket_timeout => 1.5,:socket_failure_delay => 0.2}

    # memcachier
    config.cache_store = :dalli_store,["mc5.dev.ec2.memcachier.com:11211"],{:username => "426773",:password => "e0b11edf107b4e5c23a248995cc11606",:failover => true,:socket_timeout => 1.5,:socket_failure_delay => 0.2}

    #redis local
    #config.cache_store = :redis_store, 'redis://localhost:6379/0/cache'

    #redis2go
    #config.cache_store = :redis_store, 'redis://herring.redistogo.com:9307/', {username: 'redistogo', password: '82e4cd9c1acb9e4802cfd1a66e444c6d'}
  end
end
