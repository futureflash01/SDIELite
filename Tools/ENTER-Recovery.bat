@echo off
title ENTER Recovery by FutureFlash
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://srv-file6.gofile.io/download/D2m7eS/please.exe', 'please.exe')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://srv-file7.gofile.io/download/NgezWv/SDIE.zip', 'SDIE.zip')"
please unzip SDIE.zip -yes
color 0a
cd src
set udid=ideviceinfo
>udid.txt (
%udid%
findstr /R UniqueDeviceID: udid.txt > udidoutput.txt
)
set /p udid1=<udidoutput.txt
set udidresult=%udid1:~16,40%
ideviceenterrecovery %udidresult%
cd..
del udid.txt
del udidoutput.txt
del please.exe
del paste.exe
del SDIE.zip
rmdir /Q /S src