require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Backend
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    #
    # config.action_dispatch.default_headers = {
    #   'Access-Control-Allow-Origin' => 'http://localhost:5000',
    #   'Access-Control-Request-Method' => %w{GET POST OPTIONS}.join(",")
    # }
    config.cache_store = :redis_store, ENV['REDIS_URL']
    config.session_store :redis_store, {
      servers: [
        { host: ENV['REDIS_HOST'], port: 6379, db: 0 },
      ],
      key: '_some_session_key'
    }
    config.middleware.insert_before 0, Rack::Cors do
      allow do
       origins '*'
       resource '*', headers: :any, methods: [:get, :post, :options, :delete, :patch, :put]
      end
    end


    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
