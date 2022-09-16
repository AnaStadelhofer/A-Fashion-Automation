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

Capybara.configure do | config |
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com/treinamento/home'
    config.default_max_wait_time = 5
    Capybara.page.driver.browser.manage.window.maximize
end