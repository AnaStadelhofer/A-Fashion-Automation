require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'faker'
require 'pry'
require 'rspec'
require 'httparty'
require 'i18n'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

BROWSER = ENV['BROWSER']
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT_TYPE}.yaml")

case BROWSER
when 'chrome'

  @driver = :selenium_chrome

when "headless"
  Capybara.register_driver :selenium_chrome_headless do |app|
    chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|
      options.add_argument "--headless"
      options.add_argument "--disable-gpu"
      options.add_argument "--no-sandbox"
      options.add_argument "--disable-site-isolation-trials"
    end
    client = Selenium::WebDriver::Remote::Http::Default.new
    client.read_timeout = 120

    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options,http_client: client)
  end
  @driver = :selenium_chrome_headless
else
  puts "Navegador invalido"
end

Capybara.configure do | config |
    config.default_driver = @driver
    config.app_host = CONFIG['url']
    config.default_max_wait_time = 5
    Capybara.page.driver.browser.manage.window.maximize
end