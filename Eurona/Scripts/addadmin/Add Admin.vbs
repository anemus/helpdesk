set sh = wscript.createobject("wscript.shell")
set osh= createobject("shell.application")
osh.shellexecute "cscript","G:\software\Eurona\Scripts\addadmin\admin.vbs","", "runas",1
wscript.sleep 6000
msgbox "Usuari Administrador Eurona afegit!"