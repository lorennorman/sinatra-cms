require 'rubygems'
require 'bundler'
Bundler.setup(:default)

require 'sinatra/base'

module CMS
  class Installer < Sinatra::Base
    require 'haml'
    require 'coffee-script'
    require 'sass'
    require 'compass'

    configure do
      set :views, File.dirname(__FILE__) + '/views/admin'

      Compass.configuration do |config|
        config.project_path = File.dirname(__FILE__)
        config.sass_dir = 'views/admin/stylesheets'
      end

      set :haml, :format => :html5
      set :scss, Compass.sass_engine_options
    end

    ### Prove Sass works ###
    get '/admin.css' do
      scss :admin
    end

    ### Prove CoffeeScript works ###
    get '/application.js' do
      coffee :application
    end

    ### Pass a test ###
    get '/install' do
      'Install: Step 1/3 <input id="environment" type="text"></input><input id="domain_name" type="text"></input>'
    end
  end

  class Admin < Sinatra::Base
    get '/admin' do
      "admin"
    end
  end
end