#!/usr/bin/env bash
# this script is for Mac OSX. modify for your own use.
FILE=selenium-server-standalone.jar
PORT=4444

SEL_VER_KEY=3.141
SEL_VER=$SEL_VER.59

if test -f "$FILE"; then
    echo "$FILE exist"
else
    echo "Selenium server jar $FILE does not exist!"
    # brew install wget
    wget https://selenium-release.storage.googleapis.com/$SEL_VER_KEY/selenium-server-standalone-$SEL_VER.jar
    mv selenium-server-standalone-$SEL_VER.jar $FILE
fi

java -jar selenium-server-standalone.jar -port $PORT -role hub

#NEW 4.0 format
#java -jar selenium-server-standalone.jar hub --port $PORT

