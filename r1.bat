IF "%app%"=="" call setenv.cmd	:ECHO Variable is NOT defined

:heroku config:set ENCRYPTION_KEY=uewhfuwehdfui23h84uehu34he823333&& heroku config

:heroku config:set ENCRYPTION_KEY=uewhfuwehdfui23h --app %app%&& heroku config --app %app%&& set ENCRYPTION_KEY=uewhfuwehdfui23h&& set APIHOST=http://localhost:3000&& node node_modules/nodemon/bin/nodemon.js server/server.js

:set APIHOST=https://559028d5.ngrok.io
set APIHOST=http://localhost:3000
:set APIHOST=https://XXXXX.herokuapp.com

node node_modules/nodemon/bin/nodemon.js server/server.js