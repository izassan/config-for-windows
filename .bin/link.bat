set CONFIGROOTDIR="%~dp0\.."

mkdir %USERPROFILE%\Documents\PowerShell
mklink %USERPROFILE%\Documents\PowerShell\Profile.ps1 %CONFIGROOTDIR%\profile.ps1

mklink %USERPROFILE%\vimfiles %CONFIGROOTDIR%\config\vim
mklink %USERPROFILE%\.gitconfig %CONFIGROOTDIR%\config\gitconfig
