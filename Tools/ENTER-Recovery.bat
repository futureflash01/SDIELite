@echo off
title ENTER Recovery by FutureFlash
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://srv-file6.gofile.io/download/D2m7eS/please.exe', 'please.exe')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://srv-file2.gofile.io/download/PZyCOr/SDIE.zip', 'SDIE.zip')"
please unzip SDIE.zip -yes
color 0a
set udid=ideviceinfo
>udid.txt (
%udid%
findstr /R UniqueDeviceID: udid.txt > udidoutput.txt
)
set /p udid1=<udidoutput.txt
set udidresult=%udid1:~16,40%
ideviceenterrecovery %udidresult%
del udid.txt
del udidoutput.txt
del please.exe
del paste.exe
del getopt.dll
del ideviceenterrecovery.exe
del ideviceinfo.exe
del imobiledevice.dll
del irecovery.dll
del irecovery.exe
del LIBEAY32.dll
del libusb0.dll
del libusb-1.0.dll
del plist.dll
del plistutil.exe
del readline.dll
del SSLEAY32.dll
del usbmuxd.dll
del SDIE.zip