@ECHO OFF
:call setenv

echo V1R1 packaging for tenant %1
pause

rem http://www.robvanderwoude.com/battech_convertcase.php
SETLOCAL ENABLEDELAYEDEXPANSION
SET _SAMPLE=%1

CALL :UCase _SAMPLE _RESULTS
rem ECHO.%_RESULTS%
set _UPPER=%_RESULTS%

CALL :LCase _SAMPLE _RESULTS
rem ECHO.%_RESULTS%
set _LOWER=%_RESULTS%

GOTO:EOFF

:LCase
:UCase
:: Converts to upper/lower case variable contents
:: Syntax: CALL :UCase _VAR1 _VAR2
:: Syntax: CALL :LCase _VAR1 _VAR2
:: _VAR1 = Variable NAME whose VALUE is to be converted to upper/lower case
:: _VAR2 = NAME of variable to hold the converted value
:: Note: Use variable NAMES in the CALL, not values (pass "by reference")

SET _UCase=A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
SET _LCase=a b c d e f g h i j k l m n o p q r s t u v w x y z
SET _Lib_UCase_Tmp=!%1!
IF /I "%0"==":UCase" SET _Abet=%_UCase%
IF /I "%0"==":LCase" SET _Abet=%_LCase%
FOR %%Z IN (%_Abet%) DO SET _Lib_UCase_Tmp=!_Lib_UCase_Tmp:%%Z=%%Z!
SET %2=%_Lib_UCase_Tmp%
GOTO:EOF

:EOFF
ECHO %_UPPER%
ECHO %_LOWER%
t2 && sed -i.bak -e "s|__tenant__|%_LOWER%|g" server/component-config.json &&sed -i.bak -e "s|__TENANT__|%_UPPER%|g" server/server.js && del server\sed* server\*.bak
ENDLOCAL