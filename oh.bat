echo https://devdactic.com/deploying-ionic-to-heroku/
#heroku open

IF "%app%"=="" call setenv.cmd	:ECHO Variable is NOT defined

start https://dashboard.heroku.com/apps/%app%