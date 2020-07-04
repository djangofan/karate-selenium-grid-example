@e2e
Feature: Google Search - Form

  Setup to call a Kubernetes Aerokube Moon cluster.

  Background:
    * def session = { capabilities: { browserName: 'chrome' }, desiredCapabilities: { browserName: 'chrome', version: '83.0', enableVNC: true, enableVideo: true } }
    * configure driver = { type: 'chromedriver', webDriverSession: '#(session)', showDriverLog: true, start: false, webDriverUrl: 'http://localhost:4444/wd/hub' }
    * configure report = { showRequest: false, showResponse: false, showLog: true, showAllSteps: true }

  Scenario: Fill out google search 1
      More description here
    * call read('classpath:features/functions/simple_search.feature')

  Scenario: Fill out google search 2
    * call read('classpath:features/functions/simple_search.feature')
  
  Scenario: Fill out google search 3
    * call read('classpath:features/functions/simple_search.feature')

  Scenario: Fill out google search 4
    * call read('classpath:features/functions/simple_search.feature')

  Scenario: Fill out google search 5
    * call read('classpath:features/functions/simple_search.feature')

  Scenario: Fill out google search 6
    * call read('classpath:features/functions/simple_search.feature')

  Scenario: Fill out google search 7
    * call read('classpath:features/functions/simple_search.feature')
  
  Scenario: Fill out google search 8
    * call read('classpath:features/functions/simple_search.feature')

  Scenario: Fill out google search 9
    * call read('classpath:features/functions/simple_search.feature')

  Scenario: Fill out google search 10
    * call read('classpath:features/functions/simple_search.feature')
