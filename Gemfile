source 'https://rubygems.org'

gem 'rails', '4.1.6'
gem 'rails-api'
gem 'active_model_serializers'
gem 'pg'
gem 'searchkick'
gem 'spring', :group => :development

gem 'unicorn'
gem 'bcrypt-ruby'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman'
  gem 'quiet_assets'
  gem 'capistrano', '2.15.5'
  gem 'capistrano_colors'
  gem 'guard'
  gem 'guard-livereload'
  gem 'guard-bundler'
  gem 'guard-spork'
  gem 'guard-cucumber'
  gem 'ruby_gntp'
  gem 'sextant'
  gem 'letter_opener'
end

group :development, :test do
  gem 'rspec-rails', '2.14'
  gem 'rspec-mocks', '2.14'
  gem 'brakeman'
end

group :test do
  gem 'nyan-cat-formatter', '~> 0.5.2'
  gem 'guard-rspec'
  gem 'factory_girl_rails'
  gem 'rb-fsevent', '~> 0.9.1'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem 'simplecov', :require => false
  gem 'simplecov-rcov', :require => false
end

gem "nokogiri"

gem 'rails_12factor', group: :production
ruby "2.1.2"
