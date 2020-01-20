@echo off

md C:\rh-setup

cd C:\rh-setup


curl https://raw.githubusercontent.com/quintis5150/RH_tech/master/CustomDictionary.txt -O

curl https://raw.githubusercontent.com/quintis5150/RH_tech/master/customDict.bat -O



curl https://raw.githubusercontent.com/quintis5150/RH_tech/master/EMRlogin.txt -O
echo F | xcopy /F /Y C:\rh-setup\EMRlogin.txt "C:\Program Files (x86)\EMR\EMRlogin.txt"
xcopy /Y C:\rh-setup\EMRlogin.txt C:\Users\Public\Desktop

curl https://dl.dropboxusercontent.com/s/gwnejr5e5748xo9/GoogleChromeStandaloneEnterprise64.msi -O

msiexec /i C:\rh-setup\GoogleChromeStandaloneEnterprise64.msi ALLUSERS=1 /qn
echo F | xcopy /F /Y C:\rh-setup\CustomDictionary.txt "C:\Program Files (x86)\Google\Chrome\Application\Dictionaries\Custom Dictionary.txt"
echo F | xcopy /F /Y C:\rh-setup\customDict.bat "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\customDict.bat"


