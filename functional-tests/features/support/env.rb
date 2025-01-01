require 'capybara/cucumber'
require 'selenium-webdriver'
require 'dotenv/load'

Capybara.default_driver = :selenium_chrome
Capybara.app_host = ENV['BASE_URL'] || 'http://localhost:3000'
Capybara.default_max_wait_time = 5

require 'logger'

LOG = Logger.new(STDOUT)
LOG.level = Logger::INFO
