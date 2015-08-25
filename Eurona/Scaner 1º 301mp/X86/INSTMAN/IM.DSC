;-----------------------------------------------------------------------------------------------
;   InstallManager Initialize File
;
;   Create : 2011/12/28 11:15:48 
;-----------------------------------------------------------------------------------------------
[SetupScript]
DefaultLanguage=ENGLISH
SupportLanguage=BRAZILIAN,CATALAN,CESKY,DANSK,DEUTSCH,ENGLISH,ESPANOL,FRANCAIS,GREEK,ITALIANO,MAGYAR,NEDRLNDS,NORSK,POLSKI,PORTUGUS,RUSSIAN,SUOMI,SVENSKA,TURKISH
AgreeSLA=Disagree
SetDir=..\
DisplayDiskSize=OFF
Version=2.0
RidocIONaviPortSupport=OFF
[Model]
Model=RICOH Aficio MP 301,SAVIN MP 301,Gestetner MP 301,LANIER MP 301,NRG MP 301,infotec MP 301
[Component.PCL 6 Printer Driver]
ComponentName=PCL 6 Printer Driver
ComponentKind=PrinterDriver
Quick=ON
Custom=ON
OneInstall=OFF
PortType=
DefaultLanguage=ANY
SupportLanguage=ANY
Administrators=ON
DiskSize=
SupportOS=Win2k
Setup=DRIVERS\RPDI.EXE %INSTMSGPARAM% +X:"%INPUTFILE%" +H:%DISPLAYLANG_ID% +K
Silent=
Interactive=+K
Comment=
SourcePath=EXPORT_DAT
[Component.PCL 5e Printer Driver]
ComponentName=PCL 5e Printer Driver
ComponentKind=PrinterDriver
Quick=OFF
Custom=OFF
OneInstall=OFF
PortType=
DefaultLanguage=ENGLISH
SupportLanguage=CATALAN,CESKY,DANSK,DEUTSCH,ENGLISH,ESPANOL,FRANCAIS,ITALIANO,MAGYAR,NEDRLNDS,NORSK,POLSKI,PORTUGUS,RUSSIAN,SUOMI,SVENSKA,TURKISH
Administrators=ON
DiskSize=
SupportOS=Win2k
Setup=DRIVERS\RPDI.EXE %INSTMSGPARAM% +X:"%INPUTFILE%" +H:%DISPLAYLANG_ID%
Silent=
Interactive=+K
Comment=
SourcePath=EXPORT_DAT
[Component.PS Printer Driver]
ComponentName=PS Printer Driver
ComponentKind=PSPrinterDriver
Quick=OFF
Custom=ON
OneInstall=OFF
PortType=
DefaultLanguage=ANY
SupportLanguage=ANY
Administrators=ON
DiskSize=
SupportOS=Win2k
Setup=DRIVERS\RPDI.EXE %INSTMSGPARAM% +X:"%INPUTFILE%" +H:%DISPLAYLANG_ID%
Silent=
Interactive=+K
Comment=
SourcePath=EXPORT_DAT
[Component.LAN-Fax Driver]
ComponentName=LAN-Fax Driver
ComponentKind=FaxDriver
Quick=OFF
Custom=ON
OneInstall=OFF
PortType=
DefaultLanguage=ENGLISH
SupportLanguage=BRAZILIAN,CATALAN,CESKY,DANSK,DEUTSCH,ENGLISH,ESPANOL,FRANCAIS,GREEK,ITALIANO,MAGYAR,NEDRLNDS,NORSK,POLSKI,PORTUGUS,RUSSIAN,SUOMI,SVENSKA,TURKISH
Administrators=ON
DiskSize=
SupportOS=Win2k
Setup=DRIVERS\RPDI.EXE %INSTMSGPARAM% +X:"%INPUTFILE%" +H:%DISPLAYLANG_ID% +Q
Silent=
Interactive=+K
Comment=
SourcePath=EXPORT_DAT
