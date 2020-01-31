#!/usr/bin/env bash
PORT=4444
java -Dwebdriver.chrome.driver=chromedriver -jar selenium-server-standalone.jar -port 5555 \
-role node -hub "http://localhost:$PORT/grid/register" -browser "browserName=chrome,version=ANY,maxInstances=5,platform=MAC"
