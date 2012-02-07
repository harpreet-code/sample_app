source 'http://rubygems.org'

gem 'rails', '3.1.0'

group :development do 
  gem "rspec-rails"
  gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git'
end

group :test do 
  # this is part of the tutorial but I don't like spork
  #gem 'spork', '~> 0.9.0.rc'
  gem "rspec-rails" 
  gem 'webrat', '0.7.1'
  gem 'factory_girl_rails', '1.0'
end

group :production do
  gem 'therubyracer-heroku'
end

gem 'gravatar_image_tag', '1.0.0.pre2'
gem 'will_paginate', '3.0.2'
# Moving out of development for heroku
gem 'faker', '0.3.1'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'
gem 'sqlite3'
gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

