set CONFIGROOTDIR="%~dp0\.."

mkdir %USERPROFILE%\Documents\PowersShell
mklink %USERPROFILE%\Documents\PowersShell\Profile.ps1 %CONFIGROOTDIR%\profile.ps1

mklink %USERPROFILE%\vimfiles %CONFIGROOTDIR%\config\vim
mklink %USERPROFILE%\.gitconfig %CONFIGROOTDIR%\config\gitconfig
