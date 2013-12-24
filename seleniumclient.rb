#require "json"
require "selenium-webdriver"
#gem "test-unit"
require "test/unit"
require_relative "lib/browser.rb"
#require_relative 'browser.rb'
class Ruby < Test::Unit::TestCase
	extend Grails
  self.browserinvoke

  def test_ruby
    @driver.get(@base_url + "/")
    @driver.find_element(:id, "ui-id-5").click
    @driver.find_element(:id, "ui-id-16").click
    @driver.find_element(:css, "a.nextMonth.").click
    @driver.find_element(:xpath, "(//a[contains(text(),'20')])[2]").click
    @driver.find_element(:id, "SearchBtn").click
  end
  
end
