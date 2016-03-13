source 'https://rubygems.org'

ruby '2.3.1'

gem 'dotenv-rails', groups: [:development, :test]

gem 'rails', '5.0.0.rc1'
gem 'sprockets-rails', '2.3.3'
gem 'devise', '4.1.0'
gem 'pundit'
gem 'puma'
gem 'jquery-rails'
gem 'nested_form'
gem 'active_hash'
gem 'sanitize'
gem 'gmaps4rails'
gem 'geocoder'
gem 'omniauth-google-oauth2'
gem 'omniauth-meetup'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-github'
gem 'gravatar_image_tag'
gem 'simple_form'
# TODO: find replacement, not compatible with rails 5
# gem 'rack-canonical-host'
gem 'icalendar'
gem 'pg' if ENV['FORCE_POSTGRES']
gem 'rack-mini-profiler'
gem 'bower-rails'

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'heroku_rails_deflate'
  gem 'newrelic_rpm'
  gem 'sentry-raven'
  gem 'rack-timeout'
end

gem 'handlebars_assets'
gem 'sass-rails'
gem 'coffee-rails'
gem 'uglifier'
gem 'bootstrap-sass'
gem 'font-awesome-rails'
gem 'jquery-ui-rails'
gem 'backbone-on-rails'
gem 'masonry-rails'

group :development do
  gem 'quiet_assets'
  gem 'rb-fsevent'
  gem "bullet"
  gem "heroku_san"
  gem "better_errors"
  gem "binding_of_caller"
  gem "byebug"
  gem "listen"
end

group :test, :development do
  gem 'jasmine'
  gem 'jasmine-jquery-rails'
  gem 'sqlite3'
  gem 'rspec-rails', '3.5.0.beta3'
  gem 'rspec-collection_matchers'
  gem 'awesome_print'
  gem 'rails-controller-testing'
end

group :test do
  gem 'webmock'
  gem "factory_girl_rails"
  gem 'capybara'
  gem "poltergeist"
  gem "launchy"
  gem 'shoulda-matchers'
  gem "faker"
  gem 'capybara-screenshot'
  gem 'database_cleaner'
end
