set objshell = createobject("wscript.shell")

dim impresora
impresora = inputbox("Quina impresora vols instalar?"+vbCrLf+"Planta 0"+vbCrLf+"Planta 1"+vbCrLf+"Planta 2"+vbCrLf+"Planta 3","Instalacio de impresores")
If impresora = "" then 
	wscript.quit()
end if

If impresora=0 then
	objshell.exec("Impresora_Planta0.bat")
	wscript.sleep 4000
	msgbox "Impresora afegida correctament!"
elseif impresora=1 then
	objshell.exec("%temp%\Impresora_Planta1.bat")
	wscript.sleep 4000
	msgbox "Impresora afegida correctament!"
elseif impresora=2 then
	objshell.exec("%temp%\Impresora_Planta2.bat")
	wscript.sleep 4000
	msgbox "Impresora afegida correctament!"
elseif impresora=3 then
	objshell.exec("%temp%\Impresora_Planta3.bat")
	wscript.sleep 4000
	msgbox "Impresora afegida correctament!"
else
	msgbox "Introdueix una planta correcta!",48,"Error"
end if