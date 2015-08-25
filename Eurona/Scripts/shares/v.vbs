set sh = WScript.CreateObject("WScript.Shell")
set nt = wscript.createobject("wscript.network")
'nt.removenetworkdrive "V:"
nt.mapnetworkdrive "V:", "\\172.16.222.20\voipeurona", true, "euronavoip", "Euron4v01p"
wscript.sleep 2000
msgbox"Share V: Voipeurona Afegit!"

