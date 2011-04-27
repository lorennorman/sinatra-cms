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
    def app() SinatraCMS end
  end


  require 'rspec'
  RSpec.configure { |c| c.include RSpecMixinExample }
end

Spork.each_run do

end
