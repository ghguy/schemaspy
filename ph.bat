echo "https://devdactic.com/deploying-ionic-to-heroku/"

IF "%app%"=="" call setenv.cmd	:ECHO Variable is NOT defined

del /Q/S public\dist\

:heroku config:set BUILDPACK_URL=git://github.com/ramr/strongloop-buildpack.git

:heroku config:set NODE_ENV=production

heroku git:remote --app %app% && heroku config:set ENCRYPTION_KEY=uewhfuwehdfui23h --app %app% && heroku config --app %app% & git push heroku master

:heroku ps:scale web=1