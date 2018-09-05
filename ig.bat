:npm install --global --production windows-build-tools && npm install --global node-gyp && setx PYTHON "%USERPROFILE%\.windows-build-tools\python27\python.exe"

rem ***** RESTART THE WINDOWS and launch the following inside a shortcut ("should have been created by the previous install") called Visual C++ 2015 x64 Native Build Tools Command Prompt *****

pause

:npm install strongloop -g

npm -g install --ignore-scripts strongloop

	:npm install apiconnect -g

:npm install -g loopback-cli

:brew install swagger-codegen

REM for Windows, node-inspector won't work on v8, thus you need to downgrade to v6 if needed c.f. https://github.com/node-inspector/node-inspector/issues/1013


:node -v && nvm install 6 && nvm use 6 && npm install -g node-inspector

rem For local MongoDB
mkdir \data\db

npm install -g jasmine

rem set PATH=%PATH%;C:\Windows\Microsoft.NET\Framework\v4.0.30319
rem https://www.visualstudio.com/fr/post-download-vs/?sku=xdesk&clcid=0x409&telem=ga
rem install openSSL first c.f. https://github.com/cryptocoinjs/secp256k1-node/tree/15e14632eabfa54248af97f3ff7a9dcf96f67271#windows
rem download from https://indy.fulgan.com/SSL/
rem extract all files into C:\OpenSSL-Win64\lib
