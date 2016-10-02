source 'https://rubygems.org'

gem 'rails', '4.2.5'

# Storage
gem 'aws-sdk', '~> 1.50'

# Image processing
gem 'paperclip', '~> 4.2.0'
gem 'rmagick', '2.13.4'

# Authentication
gem 'devise'
gem 'bcrypt'

# Design
gem 'sass-rails'
gem 'material_icons'

# Quality of Life
gem 'cocoon'
gem 'dateslices'

# Javascript
gem 'coffee-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'rails-jquery-autocomplete'

# SEO
gem 'meta-tags'

# Smarts
# gem 'serendipitous', :path => "~/git/serendipitous-gem"
gem 'serendipitous', git: 'https://github.com/indentlabs/serendipitous-gem.git'

# Editor
gem 'medium-editor-rails'

# Graphs & Charts
gem 'chartkick'
gem 'slack-notifier'

group :production do
  #  gem 'less-rails'
  #  gem 'less-rails-fontawesome'
  gem 'uglifier', '>= 1.3.0'
  #  gem 'bootplus-rails'
  gem 'rails_12factor'
end

group :test, :production do
  gem 'pg'
  gem 'therubyracer', platforms: :ruby
end

gem "codeclimate-test-reporter", group: :test, require: nil

group :test, :development do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'coveralls', require: false
  gem 'simplecov', require: false
  gem 'rubocop', require: false
  gem 'rspec-rails'
  gem 'rspec-prof'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'

  gem 'sqlite3'
  gem 'tzinfo-data' # addresses a bug when working on Windows

  gem 'factory_girl_rails'
  gem 'guard'
  gem 'guard-minitest'
  gem 'guard-rubocop'
  gem 'pry'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rails-perftest'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'ruby-prof', '0.15.9'
end
