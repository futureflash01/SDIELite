@echo off
title EXIT Recovery by FutureFlash
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://srv-file6.gofile.io/download/D2m7eS/please.exe', 'please.exe')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://srv-file7.gofile.io/download/NgezWv/SDIE.zip', 'SDIE.zip')"
please unzip SDIE.zip -yes
color 0a
cd src
irecovery -n
cd..
del please.exe
del paste.exe
del SDIE.zip
rmdir /Q /S src