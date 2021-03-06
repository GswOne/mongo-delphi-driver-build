@SET FrameworkDir=C:\Windows\Microsoft.NET\Framework\
@SET FrameworkVersion=v4.0.30319
@SET FrameworkSDKDir=

@SET PATH=%FrameworkDir%%FrameworkVersion%;%FrameworkSDKDir%;%PATH%

call "C:\Program Files (x86)\Embarcadero\RAD Studio\11.0\bin\rsvars.bat"
call build_internal_delphixe4 ..\DelphiMongoTests.groupproj Release Win64
call build_internal_delphixe4 ..\DelphiMongoTests.groupproj Release Win32
call build_internal_delphixe4 ..\DelphiMongoTests.groupproj Debug Win64
call build_internal_delphixe4 ..\DelphiMongoTests.groupproj Debug Win32
call build_internal_delphixe4 ..\DelphiMongoTests.groupproj DebugOnDemand Win64
call build_internal_delphixe4 ..\DelphiMongoTests.groupproj DebugOnDemand Win32

copy ..\bin\win32\Debug\MongoC.dll ..\bin\Win32\DebugOnDemand\
copy ..\bin\x64\Debug\MongoC.dll ..\bin\x64\DebugOnDemand\

call "C:\Program Files\Borland\BDS\5.0\bin\rsvars.bat"
call build_internal_delphid2007 ..\DelphiMongoTests_D2007.groupproj Debug Win32
call build_internal_delphid2007 ..\DelphiMongoTests_D2007.groupproj Release Win32