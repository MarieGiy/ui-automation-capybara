# config file

require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  
  gem 'capybara'
  gem 'selenium-webdriver'
  # debug 
  gem 'pry' 
end

# UI script config

require 'capybara'
require 'capybara/dsl'

Capybara.current_driver = :selenium
Capybara.default_max_wait_time = 5

include Capybara::DSL
