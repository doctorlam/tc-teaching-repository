source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.5'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem "bootstrap", ">= 4.3.1"
gem 'jquery-rails'
gem 'carrierwave', '~> 1.0'
gem 'filterrific'
gem 'will_paginate', '~> 3.1.0'
gem 'has_scope'
gem 'listjs-rails'
gem 'fog-aws'
gem "devise", ">= 4.6.0"
gem 'tinymce-rails'
gem 'acts_as_votable'
gem "actionview", ">= 5.1.6.2"
gem "nokogiri", ">= 1.8.5"
gem "activejob", ">= 5.1.6.1"
gem "rack", ">= 2.0.6"
gem "loofah", ">= 2.2.3"
gem "sprockets", ">= 3.7.2"

group :production do
  gem 'rails_12factor'
end
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'sqlite3', '~> 1.3.6'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
