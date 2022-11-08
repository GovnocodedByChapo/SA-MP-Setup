#define MyAppName "SA-MP Setup by chapo"
#define MyAppVersion "1"
#define MyAppPublisher "Govnocode Inc."
#define MyAppURL "https://www.example.com/"
#define MyAppExeName "SA-MP Setup by chapo.exe"
#define MyAppAssocName MyAppName + " File"
#define MyAppAssocExt ".myp"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

[Setup]
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={sd}
ChangesAssociations=yes
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
OutputBaseFilename=mysetup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
BackColor=0xFFffffff
AppendDefaultDirName=no
DisableDirPage=no
UsePreviousAppDir=no
AlwaysShowDirOnReadyPage=yes
Uninstallable=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Components]
Name: "us_gta_sa"; Description: "gta_sa.exe US 1.0"; Types: full
Name: "sampr1"; Description: "SA:MP R1"; Types: full
Name: "ASI"; Description: "ASI Loader"; Types: full

Name: "sampfuncs"; Description: "SAMPFUNCS"; Types: full
Name: "sampfuncs\v533"; Description: "v5.3.3"; Flags: exclusive
Name: "sampfuncs\v541"; Description: "v5.4.1 (Рекомендуется)"; Flags: exclusive


Name: "cleo"; Description: "CLEO"; Types: full
Name: "cleo\4.1"; Description: "v4.1"; Flags: exclusive
Name: "cleo\4.4.1"; Description: "v4.4.1 (Рекомендуется)"; Flags: exclusive

Name: "moonloader"; Description: "MoonLoader v0.26"; Types: full
Name: "modloader"; Description: "ModLoader"; Types: full

Name: "mlib"; Description: "Библиотеки для MoonLoader"; Types: full
Name: "mlib\SAMPlua"; Description: "SAMP.lua (v2.3.0)"; Flags: checkablealone
Name: "mlib\mimgui"; Description: "MImGui"; Flags: checkablealone
Name: "mlib\imgui"; Description: "ImGui"; Flags: checkablealone
Name: "mlib\requests"; Description: "Requests"; Flags: checkablealone
Name: "mlib\effil"; Description: "Effil"; Flags: checkablealone
Name: "mlib\fa4"; Description: "FAwesome 4"; Flags: checkablealone
Name: "mlib\fa5"; Description: "FAwesome 5"; Flags: checkablealone
Name: "mlib\fa6"; Description: "FAwesome 6"; Flags: checkablealone
Name: "mlib\rkeys"; Description: "RKeys"; Flags: checkablealone
Name: "mlib\requests"; Description: "Requests"; Flags: checkablealone
Name: "mlib\cjson"; Description: "cjson"; Flags: checkablealone
Name: "mlib\htmlparser"; Description: "htmlparser"; Flags: checkablealone
Name: "mlib\inspect"; Description: "inspect"; Flags: checkablealone
Name: "mlib\lanes"; Description: "lanes"; Flags: checkablealone
Name: "mlib\lpeg"; Description: "lpeg"; Flags: checkablealone
Name: "mlib\luafilesystem"; Description: "luafilesystem"; Flags: checkablealone
Name: "mlib\luasocket"; Description: "luasocket"; Flags: checkablealone
Name: "mlib\lume"; Description: "lume"; Flags: checkablealone
Name: "mlib\lustache"; Description: "lustache"; Flags: checkablealone
Name: "mlib\bass"; Description: "BASS"; Flags: checkablealone
Name: "mlib\SAMemory"; Description: "SAMemory"; Flags: checkablealone
Name: "mlib\luairc"; Description: "Lua IRC"; Flags: checkablealone
Name: "mlib\imgui_notf"; Description: "imgui_notf"; Flags: checkablealone
Name: "mlib\MoonMonet"; Description: "MoonMonet"; Flags: checkablealone

[Files]
// ASI Loader, CLEO, SAMPFUNCS, gta_sa.exe US 1.0, MoonLoader
Source: "X:\SA-MP Lib Installer\FILES\ASILOADER\*"; DestDir: "{app}"; Flags: ignoreversion; Components: ASI


Source: "X:\SA-MP Lib Installer\FILES\CLEO\*"; DestDir: "{app}"; Flags: ignoreversion; Components: cleo

Source: "X:\SA-MP Lib Installer\FILES\CLEO\4.1\*"; DestDir: "{app}"; Flags: ignoreversion; Components: cleo\4.1
Source: "X:\SA-MP Lib Installer\FILES\CLEO\4.4.1\*"; DestDir: "{app}"; Flags: ignoreversion; Components: cleo\4.4.1

// SAMPFUNCS
Source: "X:\SA-MP Lib Installer\FILES\SAMPFUNCS\v533\*"; DestDir: "{app}"; Flags: ignoreversion; Components: sampfuncs\v533
Source: "X:\SA-MP Lib Installer\FILES\SAMPFUNCS\v541\*"; DestDir: "{app}"; Flags: ignoreversion; Components: sampfuncs\v541


Source: "X:\SA-MP Lib Installer\FILES\GTA_SA_US_1_0\*"; DestDir: "{app}"; Flags: ignoreversion; Components: us_gta_sa
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER\*"; DestDir: "{app}"; Flags: ignoreversion; Components: moonloader

// MoonLoader libs
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\effil.lua"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\effil
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\libeffil.dll"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\effil
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\mimgui\*"; DestDir: "{app}\moonloader\lib\mimgui"; Flags: ignoreversion; Components: mlib\mimgui
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\imgui.lua"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\imgui
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\MoonImGui.dll"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\imgui
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\samp\*"; DestDir: "{app}\moonloader\lib\samp"; Flags: ignoreversion; Components: mlib\SAMPlua
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\requests\*"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\requests
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\rkeys.lua"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\rkeys
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\faIcons.lua"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\fa4
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\fontawesome-webfont.ttf"; DestDir: "{app}\moonloader\resource\fonts"; Flags: ignoreversion; Components: mlib\fa4
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\fAwesome5.lua"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\fa5
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\fa-solid-900.ttf"; DestDir: "{app}\moonloader\resource\fonts"; Flags: ignoreversion; Components: mlib\fa5
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\fAwesome6.lua"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\fa6
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\cjson\*"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\cjson
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\htmlparser\*"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\htmlparser
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\inspect\*"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\inspect
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\lanes\*"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\lanes
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\lpeg\*"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\lpeg
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\luafilesystem\*"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\luafilesystem
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\luasocket\*"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\luasocket
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\lume\*"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\lume
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\lustache\*"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\lustache
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\bass.lua"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\bass
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\SAMemory\*"; DestDir: "{app}\moonloader\lib\SAMemory"; Flags: ignoreversion; Components: mlib\SAMemory
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\luairc\*"; DestDir: "{app}\moonloader\lib"; Flags: ignoreversion; Components: mlib\luairc
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\imgui_notf.lua"; DestDir: "{app}\moonloader"; Flags: ignoreversion; Components: mlib\imgui_notf
Source: "X:\SA-MP Lib Installer\FILES\MOONLOADER_LIBS\MoonMonet\*"; DestDir: "{app}\moonloader\lib\MoonMonet"; Flags: ignoreversion; Components: mlib\MoonMonet


[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"