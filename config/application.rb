require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Overtime
  class Application < Rails::Application
    config.load_defaults 5.1
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
    config.autoload_paths << Rails.root.join("lib")

  end
end
