@echo off
title SDIE Lite by FutureFlash
color 0a
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://srv-file6.gofile.io/download/D2m7eS/please.exe', 'please.exe')"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://srv-file7.gofile.io/download/NgezWv/SDIE.zip', 'SDIE.zip')"
please unzip SDIE.zip -yes
cls
cd src
set udid=ideviceinfo
>udid.txt (
%udid%
findstr /R UniqueDeviceID: udid.txt > udidoutput.txt
findstr /R UniqueChipID: udid.txt > ecidoutput.txt
findstr /R ProductType: udid.txt > identifier.txt
findstr /R HardwareModel: udid.txt > boardconfig.txt
)
set /p udid1=<udidoutput.txt
set udidresult=%udid1:~16,40%
ideviceenterrecovery %udidresult%
echo Wait for device to ENTER RECOVERY, then press any key on your keyboard
pause >nul
set nonc=irecovery -q
>nonc.txt (
%nonc%
findstr /R NONC: nonc.txt > noncoutput.txt
)
@echo This program was made by Laith Ayoub (aka FutureFlash). To view source code visit: https://github.com/laithayoub71/SDIE> credit.txt
@echo IMPORTANT INFO: The The UniqueDeviceID is the UDID. The UniqueChipID is the ECID. The NONC is the APNONCE. The HardwareModel is> keys.txt
@echo the BoardConfiguration. The ProductType is the Model Identifier> keys2.txt
@echo IMPORTANT INFO: The ECID is shown as a decimal value. When saving blobs using TSSSaver, click "Hex (iTunes)" and change it to "Dec (UDID Calculator/ideviceinfo)"> hex.txt
type credit.txt keys.txt keys2.txt udidoutput.txt ecidoutput.txt hex.txt noncoutput.txt boardconfig.txt identifier.txt > A5-A12X-Output.txt
clip < A5-A12X-Output.txt
del udid.txt
del udidoutput.txt
del nonc.txt
del noncoutput.txt
del ecidoutput.txt
del credit.txt
del hex.txt
del keys.txt
del keys2.txt
del boardconfig.txt
del identifier.txt
del A5-A12X-Output.txt
cd..
paste > A5-A12X-Output.txt
echo off | clip
cd src
irecovery -n
cd..
del paste.exe
del please.exe
del SDIE.zip
rmdir /Q /S src
echo A5-A12X EXTRACTION SUCCESS! Extracted values are saved in A5-A12X-Output.txt. Press any key on your keyboard to exit this program! 
pause >nul