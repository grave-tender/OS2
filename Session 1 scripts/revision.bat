@echo off
mkdir d & cd d

mkdir d1 d2

echo hi1 > ./d1/d1f1.txt
echo hi2 > ./d1/d1f2.txt
echo hi1 > ./d2/d2f1.txt
echo hi2 > ./d2/d2f2.txt

move .\d1\d1f1.txt .\d2
move .\d1\d1f2.txt .\d2
move .\d2\d2f1.txt .\d1
move .\d2\d2f2.txt .\d1

ren .\d1\d2f1.txt d2f1n.txt
ren .\d1\d2f2.txt d2f2n.txt
ren .\d2\d1f1.txt d1f1n.txt
ren .\d2\d1f2.txt d1f2n.txt

cd ..
rmdir -r d