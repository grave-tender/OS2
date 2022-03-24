@echo on
mkdir labsEnBatch
cd labsEnBatch
mkdir python && mkdir oracle && mkdir html
echo Hello > "Hello livre1python.txt"
echo Hello > "Hello livre1html.txt"
echo Hello > "Hello livre1oracle.txt"
cd python
mkdir python1 && mkdir python2 && mkdir python3
cd ..\oracle
mkdir oracle1 && mkdir oracle2 && mkdir oracle3
cd ..\html
mkdir html1 && mkdir html2 && mkdir html3
cd ..
cd python
copy "..\Hello livre1python.txt" python1
copy "..\Hello livre1python.txt" python2
copy "..\Hello livre1python.txt" python3
cd..
cd oracle
copy "..\Hello livre1oracle.txt" oracle1
copy "..\Hello livre1oracle.txt" oracle2
copy "..\Hello livre1oracle.txt" oracle3
cd ..\html
copy "..\Hello livre1html.txt" html1
copy "..\Hello livre1html.txt" html2
copy "..\Hello livre1html.txt" html3
cd ..
mkdir Backup
cd Backup
echo f | xcopy /f /y ..\python python /E/H
echo f | xcopy /f /y ..\oracle oracle /E/H
echo f | xcopy /f /y ..\html html /E/H