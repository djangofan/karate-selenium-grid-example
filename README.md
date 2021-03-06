# karate-selenium-grid-example

Example of Karate tests running against a Selenium grid.


Before you run the tests, make sure you have WGet installed, and start the selenium grid and hub by separately running the 2 included Bash scripts at
the root of this project.

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


To work with this PR:
https://github.com/intuit/karate/commit/ea2832b38c34aeff39ae3835626b56574b395ca9

