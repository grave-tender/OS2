@echo off

echo Carlos Adolfo Leon Urrutia gr.803

REM creation des dossiers de l'espace de travail

mkdir MIDTERM && cd MIDTERM

mkdir python && cd python
mkdir python1 python2 python3

mkdir ..\oracle && cd ..\oracle
mkdir oracle1 oracle2 oracle3

mkdir ..\html && cd ..\html
mkdir html1 html2 html3

mkdir ..\java && cd ..\java
mkdir java1 java2 java3

cd ../


REM creation des fichiers

set %date% = date /t

echo hello livre1python %date% > .\python\python1\livre1python.txt
echo hello livre2python %date% > .\python\python2\livre2python.txt
echo hello livre3python %date% > .\python\python3\livre3python.txt

echo hello livre1oracle %date% > .\oracle\oracle1\livre1oracle.txt
echo hello livre2oracle %date% > .\oracle\oracle2\livre2oracle.txt
echo hello livre3oracle %date% > .\oracle\oracle3\livre3oracle.txt

echo hello livre1html %date% > .\html\html1\livre1html.txt
echo hello livre2html %date% > .\html\html2\livre2html.txt
echo hello livre3html %date% > .\html\html3\livre3html.txt

echo hello livre1java %date% > .\java\java1\livre1java.txt
echo hello livre2java %date% > .\java\java2\livre2java.txt
echo hello livre3java %date% > .\java\java3\livre3java.txt


REM copie du repertoire vers "backupfiles" sur C:/

echo f | xcopy /y .\python \backupfiles\python\ /E/H >NUL
echo f | xcopy /y .\html \backupfiles\html\ /E/H >NUL
echo f | xcopy /y .\oracle \backupfiles\oracle\ /E/H >NUL
echo f | xcopy /y .\java \backupfiles\java\ /E/H >NUL


REM suppression du dossier MIDTERM

cd .. && rmdir /s /Q MIDTERM

echo Le programme a complete sa tache avec succes!

REM QUESTION 2: Quelle est la différence entre un system d’exploitation et un langage de programmation?

REM RÉPONSE: Le OS est la suite de programmes qui permettent le fonctionnement entre les pièces 
REM physiques (clavier, écran, etc.) et les applications. Les applications sont écrites avec un language
REM de programmation pour faire une tâche spécifique.