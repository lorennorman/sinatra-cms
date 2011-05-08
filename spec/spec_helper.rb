require 'rubygems'
require 'spork'

Spork.prefork do
  ENV['RACK_ENV'] = 'test'

  require 'bundler'
  Bundler.setup

  require 'rack/test'
  require_relative '../app.rb'

  module RSpecMixinExample
    include Rack::Test::Methods

    def app
      RSpec.configuration.app_to_test || CMS::Installer
    end
  end

  require 'rspec'
  RSpec.configure do |config|
    config.include RSpecMixinExample

    # Allows tests to choose which CMS::App they test
    config.add_setting :app_to_test
  end
end

Spork.each_run do

end
