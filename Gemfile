source :rubygems

gem "sinatra"

###############################
### Templating Engines: Go! ###
###############################
# gem 'erb'
gem 'haml'
gem 'sass'
gem 'coffee-script'


group :test do
  # Background server for speed
  gem 'spork', '~> 0.9.0.rc'

  # Frameworks
  gem "rspec", "~> 2.0"
  gem "cucumber", "~> 0.10"
  gem "rack-test"
  gem "webrat"
end

group :guard do
  # File watcher for autotesting
  gem 'rb-fsevent'
  gem 'growl'
  gem 'guard'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-cucumber'
end