@echo off
::_scripts = liste tous les descriptions des commandes ici qui commencent par "::_NOM ="
echo Voici ce que chaque fichier fait:
::test2
for /r %%i in (*) do type %%i | findstr "^::_"
pause