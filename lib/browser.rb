module Grails

   
    def browserinvoke(browser = :firefox, *args)
      @driver = Selenium::WebDriver.for :firefox

    end
  
end