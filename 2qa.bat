call setenv

copy /Y server\datasources.json.qa server\datasources.json
copy /Y server\component-config.json.qa server\component-config.json
:copy server\server.js.tmp server\server.js

:sed -i.bak -e "s|__TIER__|QA|g" server/server.js && del server\server.bak server\sed*

set _BUILD=101
set _BUILD_DATE=24/5/2018
set _TENANT=XXXXX
set _TIER=QA
set _APIHOST=https://XXXXX-qa.herokuapp.com

set BUILD=%_BUILD%&&set BUILD_DATE=%_BUILD_DATE%&&set TENANT=%_TENANT%&&set TIER=%_TIER%&&set APIHOST=%_APIHOST%

heroku accounts:set qa&&set app=XXXXX-qa&&heroku config:set --app %app% BUILD=%_BUILD% BUILD_DATE=%_BUILD_DATE% TENANT=%_TENANT% TIER=%_TIER% APIHOST=%_APIHOST%
