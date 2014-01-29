# encoding: utf-8
require 'rack/rescue'

if defined?(Rails) && [3,4].include?(Rails::VERSION::MAJOR)
  class Rack::Rescue::Railtie < Rails::Railtie
    initializer('rack-rescue.prepend') { |app| app.config.middleware.insert_before Rack::Timeout, Rack::Rescue }
  end
end