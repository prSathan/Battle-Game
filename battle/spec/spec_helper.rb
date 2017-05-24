require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'features/web_helpers'

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

Capybara.app = Battle
