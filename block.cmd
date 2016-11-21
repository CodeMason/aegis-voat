@echo off
setlocal enableDelayedExpansion
route print 2>nul >routes.tmp

FOR /F %%I IN (%~dp0block-ip.txt) DO (
  findstr %%I routes.tmp >nul 2>&1
  if %errorlevel% neq 0 (
    route -p add %%I/32 0.0.0.0 >nul 2>&1
    echo  - blocked %%I
  )
)

FOR /F %%I IN (%~dp0block-domain.txt) DO (
  findstr " %%I" %systemdrive%\windows\system32\drivers\etc\hosts >nul 2>&1
  if !errorlevel! neq 0 (
    echo 0.0.0.0 %%I >>%systemdrive%\windows\system32\drivers\etc\hosts
    echo  - blocked %%I
  )
)

del /f /q routes.tmp >nul 2>&1
exit

:: Modifying the hosts file would be much easier and faster 
:: if grep.exe were available as well as sed.exe
::
:: For example:
::
:: set sed="%~dp0sed.exe"
:: set grep="%~dp0grep.exe"
:: set bd="%~dp0block-domain.txt"
:: set hf="%systemdrive%\windows\system32\drivers\etc\hosts"
:: set t1=hosts1.tmp
:: set t2=hosts2.tmp
::
:: :: ignore comments and blank lines in block-domain.txt
:: "%sed%" -e 's/#.*//; /^[[:space:]]*$/d' "%bd" > "%t1"
::
:: :: create a list of "0.0.0.0 domain.name" hosts entries
:: :: **MUCH** faster than running findstr and echo hundreds of times in a FOR loop
:: :: (this would be even easier with awk)
:: "%sed%" -e 's/#.*//; /^[[:space:]]*$/d' "%hf" | "%grep%" -o '^[^[:space:]]*' | "%grep%" -v -F -f "%t1" | "%sed%" -e 's/^/0.0.0.0 /' > "%t2"
::
:: :: append it to the hosts file
:: type "%t2" >> "%hf"
::
:: :: tell user what we've done
:: "%sed%" -e 's/^/ - blocked /' "%t1"
::
:: :: clean up
:: delete /Q "%t1" "%t2"

