@echo off
xcopy "drivers" %temp%\drivers /I /Y /D /S

Cscript "%temp%\drivers\Prnport.vbs" -a -r Planta_0 -h 10.0.0.169 -o raw -n 9100

Cscript "%temp%\drivers\Prndrvr.vbs" -a -m "PCL6 Driver for Universal Print" -i %temp%\drivers\x32\oemsetup.inf -h %temp%\drivers\x32

Cscript "%temp%\drivers\Prnmngr.vbs" -a -p "RICOH Aficio MP C3300 Planta 0" -m "PCL6 Driver for Universal Print" -r Planta_0

rd %temp%\drivers\ /s /q

@pause