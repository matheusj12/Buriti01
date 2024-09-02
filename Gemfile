source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"

# Rails and core dependencies
gem 'rails', '~> 7.2.0'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 6.0'
gem 'sprockets-rails'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'bootsnap', require: false
gem 'sassc-rails'

# Additional gems
gem 'multi_json'
gem 'devise'
gem 'omniauth'
gem 'omniauth-digitalocean'
gem 'chartkick'
gem 'groupdate'
gem 'bootstrap', '~> 5.2'
gem 'jquery-rails'
gem 'cssbundling-rails', '~> 1.1'
gem 'jsbundling-rails', '~> 1.1'

# Development and testing
group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
