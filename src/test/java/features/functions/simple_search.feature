

@disabled
Feature: Function to search google

  Scenario: Simple Google Search
    Given driver "https://www.google.com"
    When driver.input("//input[@name='q']", 'The Standard')
    And driver.click("//input[@name='btnK']")
    Then match driver.text("//div[@class='g']") contains "The Standard"
