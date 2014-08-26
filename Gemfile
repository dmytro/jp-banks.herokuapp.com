ruby '2.1.2'

source 'https://rubygems.org'

gem 'rails', '4.0.5'

# OR mapper
gem 'mongoid', '4.0.0'

# Template engines
gem 'haml-rails'
gem 'jbuilder'

# Middlewares
gem 'rack-contrib'
gem 'rack-cache'

# Assets
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'

# Javascript runtime
gem 'therubyracer'

# Javascripts
gem 'jquery-rails'
gem 'turbolinks'
gem 'select2-rails'

# Stylesheets
gem 'twitter-bootstrap-rails'
gem 'less-rails'
gem 'google-code-prettify-rails'

# Web server
gem 'puma'

# Cache
gem 'dalli'
gem 'memcachier'

# Services
gem 'newrelic_rpm'

# Pagination
gem 'kaminari'

# Engines
gem 'docs', path: 'engines/docs'
gem 'api', path: 'engines/api'
gem 'admins', path: 'engines/admins'

group :development do
  gem 'foreman', require: false
  gem 'httparty'
  gem 'moji'
  gem 'sidekiq'
  gem 'sinatra', require: false
end

group :development, :test do
  gem 'spring'
  gem 'pry-rails'
end

group :production do
  # Heroku
  gem 'rails_12factor'
end
