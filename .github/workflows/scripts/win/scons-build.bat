
setlocal enabledelayedexpansion

for /f "usebackq tokens=*" %%i in (`vswhere -latest -products * -requires Microsoft.VisualStudio.Component.VC.Tools.x86.x64 -find **/Auxiliary/Build/vcvarsall.bat`) do (
  call "%%i" x86_amd64
)

scons
