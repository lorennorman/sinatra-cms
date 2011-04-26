ENV['RACK_ENV'] = 'test'

require 'rubygems'
require 'bundler'
Bundler.setup

require 'rack/test'
require 'rspec/expectations'
require 'webrat'
require_relative '../../app.rb'

Webrat.configure do |config|
  config.mode = :rack
end

class WebratMixinExample
  include Rack::Test::Methods
  include Webrat::Methods
  include Webrat::Matchers

  Webrat::Methods.delegate_to_session :response_code, :response_body

  def app
    Sinatra::Application
  end
end

World{WebratMixinExample.new}
