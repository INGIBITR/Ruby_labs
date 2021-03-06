require "selenium-webdriver"
# load in the webdriver gem to interact with Selenium
#System.setProperty(“webdriver.chrome.driver”,”/Users/ingibitr/Documents/Ruby_labs/Lab9_app/test/controllers/chromedriver.exe”);

# create a driver object.
# This is what you will actually interact with to do things within the automated
driver = Selenium::WebDriver.for :chrome

# open CrossBrowserTesting.com inside Chrome
driver.navigate.to "http://crossbrowsertesting.com"

# find the login button and click it
element = driver.find_element(class: "login")
element.click

driver.quit
