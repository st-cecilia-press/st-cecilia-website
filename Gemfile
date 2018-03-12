source 'https://rubygems.org'
ruby "2.4.2"


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.1.5'

group :production do
  gem 'mysql2'
end
group :development, :test do
  gem 'sqlite3'
end
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# See https://github.com/rails/execjs#readme for more supported runtimes
 gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'guard-rspec'
gem 'pdf-reader'
gem "font-awesome-rails"
gem 'bootstrap-sass'
gem 'mail_form'
gem 'dotenv-rails', :require => 'dotenv/rails-now'
gem 'recaptcha', require: 'recaptcha/rails'
gem 'twitter-typeahead-rails'
gem 'midilib'
gem 'zeroclipboard-rails'
gem 'bootstrap-slider-rails'
gem 'redcarpet'
gem 'devise'
gem 'cancancan'
gem 'formtastic'
gem 'formtastic-bootstrap'

source 'https://rails-assets.org' do
  gem 'rails-assets-datatables'
  gem 'rails-assets-listjs'
  gem 'rails-assets-simplemde'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'puma'
group :development, :test do
  gem 'capistrano-rails'
  gem 'capistrano3-puma'
  gem 'capistrano-rbenv'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'phantomjs'
  gem 'poltergeist'
end
group :test do
  gem "database_cleaner"
  gem "shoulda-matchers"
end
group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

