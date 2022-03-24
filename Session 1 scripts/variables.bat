@echo off
::_variables = test des variables
set msg = hi

echo %msg%

set /A a = 5
set b = 5
set /A c = %a% + %a%
set d = %b% %b% %b%

echo %c%
echo %d%