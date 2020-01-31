@er-statement
Feature: Google Search - Form

  Background:
    * configure driver = { type: 'chromedriver', showDriverLog: true, start: false, webDriverUrl: 'http://localhost:4444/wd/hub' }
    #* configure driver = { type: 'chromedriver', showDriverLog: true, start: false, webDriverUrl: '#(global.gridUrl)' }
    #* configure driver = { type: 'chromedriver', headless: true, showDriverLog: true }
    #* configure driver = { type: 'chrome', showDriverLog: true, start: true }
    * configure report = { showRequest: false, showResponse: false, showLog: true, showAllSteps: true }

  Scenario: Fill out entire intake employer statement without submission
      More description here
    Given driver "https://www.google.com"
    When driver.input(po.search_field, 'test test')
    And driver.click(po.search_button)
    Then match driver.text(po.result_stats) contains "About "

    # 'Employment' section
    * karate.log("Finished Google search.")


