:call nodist use 8

set MONGODB_VERSION=3.2

IF EXIST \data\db GOTO SKIP
mkdir \data\db
:SKIP

del \data\db\mongod.lock && mongod --repair

start \MongoDB\Server\%MONGODB_VERSION%\bin\mongod.exe --storageEngine=mmapv1
:pause

copy /Y server\datasources.json.local server\datasources.json

echo XXXXX@gmail.com / admin to login via API host!

:set NODE_ENV=local&& 
set ENCRYPTION_KEY=...&& set APIHOST=http://localhost:3000&& node node_modules/nodemon/bin/nodemon.js server/server.js
