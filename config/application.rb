require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsCacheLatencyBenchmark
  class Application < Rails::Application
    # Memcache Localhost
    #config.cache_store = :dalli_store,["localhost:11211"],{:failover => true,:socket_timeout => 1.5,:socket_failure_delay => 0.2}

    # Memcachier
    # config.cache_store = :dalli_store,["host:pot"],{:username => "username",:password => "password",:failover => true,:socket_timeout => 1.5,:socket_failure_delay => 0.2}i

    # elasticache
    #config.cache_store = :dalli_store, ["host"],{:failover => true,:socket_timeout => 1.5,:socket_failure_delay => 0.2}

    # redis local
    #config.cache_store = :redis_store, 'redis://localhost:6379'

    #redis on compose
    #config.cache_store = :redis_store, 'redis url', {username: 'x', password: 'password'}
end
