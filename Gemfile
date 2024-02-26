source 'https://rubygems.org'
ruby '3.3.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.7.7'

# use psych because of issue here https://stackoverflow.com/questions/68802089/rails-couldnt-infer-whether-you-are-using-multiple-databases-from-your-database
gem 'psych', '< 4.0.0'

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# for user logon/off
gem 'devise'

# bootstrap for CSS
gem 'bootstrap', '~> 5.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# we use state machine for the status of each idea
gem 'state_machines'
gem 'state_machines-activerecord'

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
  gem 'cucumber-rails', require: false
  gem 'rspec-rails'
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  gem 'pry-byebug'
  gem 'rubocop'
end

gem 'puma'

group :development, :test do
end

group :production do
  gem 'rails_12factor'
end

gem 'base64', '~> 0.2.0'

gem 'mutex_m', '~> 0.2.0'
