set sh = wscript.createobject("wscript.shell")
wscript.sleep 500
sh.sendkeys "net user Eurona /add *"
wscript.sleep 500
sh.sendkeys "{ENTER}"
wscript.sleep 500
sh.sendkeys "euronait"
wscript.sleep 500
sh.sendkeys "{ENTER}"
wscript.sleep 500
sh.sendkeys "euronait"
wscript.sleep 500
sh.sendkeys "{ENTER}"
wscript.sleep 500
sh.sendkeys "net localgroup Administradores Eurona /add"
wscript.sleep 500
sh.sendkeys "{ENTER}"
wscript.sleep 500
sh.sendkeys "exit"
wscript.sleep 500
sh.sendkeys "{ENTER}"

