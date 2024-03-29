; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Twinmaster Building"
#define MyAppVersion "1.0.1"
#define MyAppPublisher "TwinMaster Co"
#define MyAppURL "https://twinup.co"
#define MyAppExeName "Twinmaster_Building.exe"



[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)    {A6BF2AB5-F851-41E1-913E-44386299618F}
AppId={{68651286-EA17-4EA1-B44E-DCAF652025A5}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Users\abhis\Downloads\Licence.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\abhis\Documents\innoOp
OutputBaseFilename=TwinMaster Building Installer
SetupIconFile=C:\Dev\CesiumUnreal\logo.ico
;Password=MyPassword
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Dev\CesiumUnreal\Build\Twinmaster_Building\Twinmaster_Building.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Dev\CesiumUnreal\Build\Twinmaster_Building\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent


[Registry]
; These are the registry entries required to add Atom to the Windows explorer context menu
; These are only created when the user does not uncheck the Task (see [Tasks]) "contextmenu"

[Registry]
; These are the registry entries required to add Atom to the Windows explorer context menu
; These are only created when the user does not uncheck the Task (see [Tasks]) "contextmenu"

Root: HKCR; Subkey: "twinup";ValueName: "shell"; ValueType: string; ValueData: "open";   Flags: uninsdeletekey;
Root: HKCR; Subkey: "twinup";ValueName: "URL Protocol"; ValueType: string; ValueData: "";   Flags: uninsdeletekey;
Root: HKCR; Subkey: "twinup\shell\open\command"; ValueName: ""; ValueType: string; ValueData: """{app}\{#MyAppExeName}"" ""%1"""; Flags: uninsdeletekey; 




