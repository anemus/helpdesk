set sh = WScript.CreateObject("WScript.Shell")
set nt = wscript.createobject("wscript.network")
Set fso = CreateObject("Scripting.FileSystemObject")
dim bits, printer, testprint, folderpath
folderpath = fso.getAbsolutePathName(printing)
printer = inputbox("De quina planta vols afegir la impresora?", "Escollir impressora")

bits = inputbox("Quina arquitectura te el Sistema Operatiu? (32 bits o 64 bits)","x86 - x64")

select case printer
	case 0:
		planta0(bits)
	case 2:
		planta2(bits)
	case 3:
		planta3(bits)
	case else:
		msgbox "Introdueix una planta correcta", 48, "Error"
end select

'A�adimos el driver de la impresora (nombre driver impresora, ruta)
'cscript Printing_Admin_Scripts\es-ES\prndrvr.vbs -a -m "PCL6 Driver 'for Universal Print" -i "C:\Users\eurona\Desktop\32bit\oemsetup.inf" 
'wscript.sleep 3000

'A�adimos un puerto de red para la impresora ( nombre puerto red, IP 'de la impreosa, tipo de puerto -raw, numero puerto default: 9100)
'cscript Printing_Admin_Scripts\es-ES\prnport.vbs -a -r IP_10.0.0.169 '-'h 10.0.0.169 -o raw -n 9100" 
'wscript.sleep 3000

'A�adimos la impresora al sistema (nombre, nombre driver, nombre 'puerto red)
'cscript Printing_Admin_Scripts\es-ES\prnmngr.vbs -a -p "Aficio 'C3300"  -m "PCL6 Driver for Universal Print" -r "IP_10.0.0.169"

'Imprimimos pagina de prueba (nombre impresora)
'cscript Printing_Admin_Scripts\es-ES\prnqctl.vbs -e -p "Aficio 'C3300"  " 

sub planta0(bits)
select case bits
	case 32:
		sh.run "cmd.exe", 1
		wscript.sleep 2000

		sh.sendkeys "cscript prndrvr.vbs -a -m ""PCL6 Driver for Universal Print"" -i folderpath&""\x32\oemsetup.inf"" -e ""Windows NT x86"" "
		sh.sendkeys "{ENTER}"
		wscript.sleep 8000

		sh.sendkeys "cscript prnport.vbs -a -r IP_10.0.0.169 -h 10.0.0.169 -o raw -n 9100"
		sh.sendkeys "{ENTER}"
		wscript.sleep 8000

		sh.sendkeys "cscript prnmngr.vbs -a -p ""Aficio C3300""  -m ""PCL6 Driver for Universal Print"" -r ""IP_10.0.0.169"""
		sh.sendkeys "{ENTER}"
		wscript.sleep 8000
		nt.setdefaultprinter "Aficio C3300"
		wscript.sleep 5000
	case 64: 
		sh.run "cmd.exe", 1
		wscript.sleep 2000

		sh.sendkeys "pnputil -a x64\oemsetup.inf"
		sh.sendkeys "{ENTER}"
		wscript.sleep 6000
		sh.sendkeys "cscript prndrvr.vbs -a -m ""RICOH Aficio MP C3300 PCL 6"" "
		sh.sendkeys "{ENTER}"
		wscript.sleep 4000

		sh.sendkeys "cscript prnport.vbs -a -r IP_10.0.0.169 -h 10.0.0.169 -o raw -n 9100"
		sh.sendkeys "{ENTER}"
		wscript.sleep 4000

		sh.sendkeys "cscript prnmngr.vbs -a -p ""Aficio C3300""  -m ""RICOH Aficio MP C3300 PCL 6"" -r ""IP_10.0.0.169"""
		sh.sendkeys "{ENTER}"
		wscript.sleep 4000
		nt.setdefaultprinter "Aficio C3300"
		wscript.sleep 2000
	case else:
		msgbox "No s'ha introduit l'arquitectura correcte", 16, "Error"
end select

testprint = msgbox("Vols imprimir una pagina de prova?",36, "Pagina de prova")

if testprint = 6 then
	sh.sendkeys "cscript prnqctl.vbs -e -p ""Aficio C3300"""
	wscript.sleep 500
	sh.sendkeys "{ENTER}"
	wscript.sleep 2000
	msgbox "Impresora afegida correctament!",64, "Fet"
else
	msgbox "Impresora afegida correctament!",64, "Fet"
end if
end sub

sub planta2(bits)
select case bits
	case 32:
		sh.run "cmd.exe", 1
		wscript.sleep 2000

		sh.sendkeys "cscript prndrvr.vbs -a -m ""PCL6 Driver for Universal Print"" -i folderpath&""x32\oemsetup.inf "" -e ""Windows NT x86"" "
		sh.sendkeys "{ENTER}"
		wscript.sleep 8000

		sh.sendkeys "cscript prnport.vbs -a -r IP_10.0.0.106 -h 10.0.0.106 -o raw -n 9100"
		sh.sendkeys "{ENTER}"
		wscript.sleep 8000

		sh.sendkeys "cscript prnmngr.vbs -a -p ""Aficio C2800""  -m ""PCL6 Driver for Universal Print"" -r ""IP_10.0.0.106"""
		sh.sendkeys "{ENTER}"
		wscript.sleep 8000
		nt.setdefaultprinter "Aficio C2800"
		wscript.sleep 5000
		
	case 64: 
		sh.run "cmd.exe", 1
		wscript.sleep 2000

		sh.sendkeys "pnputil -a x64\oemsetup.inf"
		sh.sendkeys "{ENTER}"
		wscript.sleep 6000
		sh.sendkeys "cscript prndrvr.vbs -a -m ""RICOH Aficio MP C2800 PCL 6"" "
		sh.sendkeys "{ENTER}"
		wscript.sleep 4000

		sh.sendkeys "cscript prnport.vbs -a -r IP_10.0.0.106 -h 10.0.0.106 -o raw -n 9100"
		sh.sendkeys "{ENTER}"
		wscript.sleep 4000

		sh.sendkeys "cscript prnmngr.vbs -a -p ""Aficio C2800""  -m ""RICOH Aficio MP C2800 PCL 6"" -r ""IP_10.0.0.106"""
		sh.sendkeys "{ENTER}"
		wscript.sleep 4000
		nt.setdefaultprinter "Aficio C2800"
		wscript.sleep 2000
	case else:
		msgbox "No s'ha introduit l'arquitectura correcte", 16, "Error"
end select

testprint = msgbox ("Vols imprimir una pagina de prova?",36, "Pagina de prova")

if testprint = 6 then
	sh.sendkeys "cscript prnqctl.vbs -e -p ""Aficio C2800"""
	wscript.sleep 500
	sh.sendkeys "{ENTER}"
	wscript.sleep 2000
	msgbox "Impresora afegida correctament!",64, "Fet" 
else
	msgbox "Impresora afegida correctament!",64, "Fet"
end if
end sub

sub planta3(bits)
select case bits
	case 32:
		sh.run "cmd.exe", 1
		wscript.sleep 8000

		sh.sendkeys "cscript prndrvr.vbs -a -m ""PCL6 Driver for Universal Print"" -i folderpath&""x32\oemsetup.inf"" -e ""Windows NT x86"" "
		sh.sendkeys "{ENTER}"
		wscript.sleep 8000

		sh.sendkeys "cscript prnport.vbs -a -r IP_10.0.0.164 -h 10.0.0.106 -o raw -n 9100"
		sh.sendkeys "{ENTER}"
		wscript.sleep 8000

		sh.sendkeys "cscript prnmngr.vbs -a -p ""Aficio C2800""  -m ""PCL6 Driver for Universal Print"" -r ""IP_10.0.0.164"""
		sh.sendkeys "{ENTER}"
		wscript.sleep 8000
		nt.setdefaultprinter "Aficio C2800"
		wscript.sleep 5000

	case 64: 
		sh.run "cmd.exe", 1
		wscript.sleep 2000

		sh.sendkeys "pnputil -a x64\oemsetup.inf"
		sh.sendkeys "{ENTER}"
		wscript.sleep 6000
		sh.sendkeys "cscript prndrvr.vbs -a -m ""RICOH Aficio MP C2800 PCL 6"" "
		sh.sendkeys "{ENTER}"
		wscript.sleep 4000

		sh.sendkeys "cscript prnport.vbs -a -r IP_10.0.0.164 -h 10.0.0.164 -o raw -n 9100"
		sh.sendkeys "{ENTER}"
		wscript.sleep 4000

		sh.sendkeys "cscript prnmngr.vbs -a -p ""Aficio C2800""  -m ""RICOH Aficio MP C2800 PCL 6"" -r ""IP_10.0.0.164"""
		sh.sendkeys "{ENTER}"
		wscript.sleep 4000
		nt.setdefaultprinter "Aficio C2800"
		wscript.sleep 2000

	case else:
		msgbox "No s'ha introduit l'arquitectura correcte", 16, "Error"
end select

testprint = msgbox("Vols imprimir una pagina de prova?",36, "Pagina de prova")

if testprint = 6 then
	sh.sendkeys "cscript prnqctl.vbs -e -p ""Aficio C2800"""
	wscript.sleep 500
	sh.sendkeys "{ENTER}"
	wscript.sleep 2000
	msgbox "Impresora afegida correctament!",64, "Fet" 
else
	msgbox "Impresora afegida correctament!",64, "Fet" 
end if
end sub

 
