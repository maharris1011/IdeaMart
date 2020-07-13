source 'https://rubygems.org'
ruby '2.7.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2'

# for testing

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# for user logon/off
gem 'devise'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# we use state machine for the status of each idea
gem 'state_machines'
gem 'state_machines-activemodel'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# simple-form makes things easy!
gem 'simple_form'

# new relic for performance
gem 'newrelic_rpm'

gem 'rake'

group :test, :development do
  gem 'cucumber-rails', :require => false
  gem 'rspec-rails'
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  gem 'rubocop'
  gem 'pry-byebug'
end

gem 'puma'

group :development, :test do
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
group :production do
  gem 'rails_12factor'
end

# Use debugger
# gem 'debugger', group: [:development, :test]
