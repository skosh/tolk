source "http://rubygems.org"

gem "rails", "4.0.0"

gem 'kaminari'
gem 'safe_yaml', '>= 0.8.6'

group 'test' do
  gem 'capybara'
  gem "factory_girl_rails"
  gem "sqlite3"
  gem "mocha"
  gem 'launchy'
  gem 'selenium-webdriver'
end

group 'development' do
  if RUBY_VERSION < '1.9'
    gem "ruby-debug", ">= 0.10.3"
  end
end
