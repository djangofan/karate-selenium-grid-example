#!/usr/bin/env bash
# this script is for Mac OSX. modify for your own use.
FILE=selenium-server-standalone.jar
if test -f "$FILE"; then
    echo "$FILE exist"
else 
    echo "Selenium server jar $FILE does not exist!"
    # brew install wget
    wget https://selenium-release.storage.googleapis.com/3.13/selenium-server-standalone-3.13.0.jar
    mv selenium-server-standalone-3.13.0.jar $FILE
fi

java -jar selenium-server-standalone.jar -port 4444 -role hub




