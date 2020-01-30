#!/usr/bin/env bash

java -Dwebdriver.chrome.driver=chromedriver -jar selenium-server-standalone.jar -port 5555 \
-role node -hub http://localhost:4444/grid/register -browser "browserName=chrome,version=ANY,maxInstances=10,platform=MAC"
