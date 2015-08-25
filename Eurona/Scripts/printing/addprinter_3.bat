@echo off

rem Copiamos los archivos necesarios (drivers y scripts) en la carpeta temp
xcopy "drivers" %temp%\drivers /I /Y /D /S

rem Creamos el puerto para asociar con la impresora
Cscript "%temp%\drivers\Prnport.vbs" -a -r Planta_3 -h 10.0.0.164 -o raw -n 9100

rem Añadimos el driver con su nombre perteneciente
Cscript "%temp%\drivers\Prndrvr.vbs" -a -m "RICOH Aficio MP C2800 PCL 6" -i %temp%\drivers\x64\oemsetup.inf -h %temp%\drivers\x64

rem Agregamos la impresora con el nombre escogido y asociado a su puerto y driver
Cscript "%temp%\drivers\Prnmngr.vbs" -a -p "RICOH Aficio MP C2800 Planta 3" -m "RICOH Aficio MP C2800 PCL 6" -r Planta_3

rem La establecemos como predeterminada
RUNDLL32 PRINTUI.DLL,PrintUIEntry /y /n "RICOH Aficio MP C3300 Planta 3"

rem Borramos los archivos utilizados
rd %temp%\drivers\ /s /q

rem Pausamos el script para ver posibles errores
@pause