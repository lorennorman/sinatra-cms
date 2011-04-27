require 'rubygems'
require 'bundler'
Bundler.setup(:default)

require 'sinatra/base'

class SinatraCMS < Sinatra::Base
  ### Prove Sass works ###
  require 'sass'

  get '/style.css' do
    scss :style
  end

  ### Prove CoffeeScript works ###
  require 'coffee-script'

  get '/application.js' do
    coffee :application
  end

  ### Prove Haml works, includes the others ###
  require 'haml'
  set :haml, :format => :html5 # default Haml format is :xhtml

  get '/about' do
    haml :about
  end

  ### Pass a test ###
  get '/' do
    'Installation Instructions: Step 1 <input id="environment" type="text"></input><input id="domain_name" type="text"></input>'
  end
end