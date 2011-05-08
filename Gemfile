source :rubygems

gem "sinatra"

###############################
### Templating Engines: Go! ###
###############################
# gem 'erb'
gem 'haml'
gem 'coffee-script'
gem 'sass'
gem 'compass'


group :test do
  # Background test server for speedier runs
  gem 'spork', '~> 0.9.0.rc'

  # Frameworks
  gem "rspec", "~> 2.0"
  gem "cucumber", "~> 0.10"
  gem "rack-test"
  gem "webrat"
end

group :guard do
  # File watcher for instant, effortless test feedback
  gem 'rb-fsevent'
  gem 'growl'
  gem 'guard'
  gem 'guard-pow'      # when to restart the dev environment?
  gem 'guard-spork'    # when to restart the test environment?
  gem 'guard-rspec'    # when to run the specs?
  # when to run the stories?
  gem 'guard-cucumber', :git => "https://github.com/lorennorman/guard-cucumber"
end
