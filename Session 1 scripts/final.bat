@echo off
:: 1)
mkdir mainrep && cd mainrep

:: 2)
mkdir mainsous_rep1 mainsous_rep2 mainsous_rep3

:: 3)
mkdir mainsous_rep1\mainsous_rep12
echo > mainsous_rep1/test1rep1.txt
echo > mainsous_rep1/test2rep1.txt

echo > mainsous_rep2/test1rep2.txt
echo > mainsous_rep2/test2rep2.txt

echo > mainsous_rep3/test1rep3.txt
echo > mainsous_rep3/test2rep3.txt

:: 4) & 5) (le numero 3 ce repete 2 fois)
move mainsous_rep1\mainsous_rep12 ./mainsous_rep2
move mainsous_rep1\test1rep1.txt ./mainsous_rep2
move mainsous_rep1\test2rep1.txt ./mainsous_rep2


move mainsous_rep2\test1rep2.txt ./mainsous_rep1
move mainsous_rep2\test2rep2.txt ./mainsous_rep1

:: 6)
ren mainsous_rep1\test1rep2.txt testnew1rep2.txt
ren mainsous_rep1\test2rep2.txt testnew2rep2.txt

ren mainsous_rep2\test1rep1.txt testnew1rep1.txt
ren mainsous_rep2\test2rep1.txt testnew2rep1.txt

ren mainsous_rep3\test1rep3.txt testnew1rep3.txt
ren mainsous_rep3\test2rep3.txt testnew2rep3.txt

:: 7) 
del mainsous_rep1\testnew1rep2.txt
del mainsous_rep1\testnew2rep2.txt

del mainsous_rep2\testnew1rep1.txt
del mainsous_rep2\testnew2rep1.txt

del mainsous_rep3\testnew1rep3.txt
del mainsous_rep3\testnew2rep3.txt

::8)
rmdir mainsous_rep2\mainsous_rep12
rmdir mainsous_rep1
rmdir mainsous_rep2
rmdir mainsous_rep3

cd ..
rmdir mainrep