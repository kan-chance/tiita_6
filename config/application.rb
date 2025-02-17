require_relative 'boot'

require 'rails/all'
require 'csv'

#↓必要なければ消す
# require_relative 'boot'
# ←

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

#↓必要なければ消す
# module Bookers2Debug
#   class Application < Rails::Application
#     config.load_defaults 5.2
#   end
# end
# ←


module Tiita6
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
