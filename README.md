# karate-selenium-grid-example

Example of Karate tests running against a Selenium grid.


```diff
- NOTE: Just a POC
- NOTE: Karate tests do not currently work with Selenium Grid !! (December 2019) . There is 
-   no plan for Karate to support Selenium grid BUT Karate project is implementing
-    a Dockerized container testing solution that provides videos of browser tests.
- NOTE: This project can be reused for Gatling performance tests of the UI
```

## Execution Of Tests

To execute Karate tests:

    mvn clean test
    
For Selenium Karate tests, run one of these commands:

    brew cask install chromedriver
    npm install chromedriver --save-dev
    
## Notes

Karate Driver/Core:
https://intuit.github.io/karate/karate-core/

Selenium WebDriver DSL:
https://github.com/intuit/karate/blob/develop/karate-core/src/main/java/com/intuit/karate/driver/WebDriver.java
https://www.mvndoc.com/c/com.intuit.karate/karate-core/com/intuit/karate/driver/DevToolsDriver.html


