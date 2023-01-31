@echo off

call :isAdmin

if %errorlevel% == 0 (
    goto :run
) else (
    echo Requesting administrative privileges...
    PING localhost -n 2 >NUL

    goto :UACPrompt
)

exit /b

:isAdmin
    fsutil dirty query %systemdrive% >nul
exit /b

:run

    @echo off
    echo -------------------
    echo Yaay! We've got admin rights!
    PING localhost -n 2 >NUL
    echo -------------------
    PING localhost -n 1 >NUL

    echo Copying ADBO files...
    PING localhost -n 2 >NUL

    echo -------------------
    PING localhost -n 1 >NUL
    
    echo RESULT:
    copy %~dp0\adbo.cmd C:\Windows\System32\adbo.cmd
    copy %~dp0\adbo.path C:\Windows\System32\adbo.path

    PING localhost -n 2 >NUL
    echo -------------------
    PING localhost -n 1 >NUL
    echo Success! Now you can use 'adbo' command from any directory
    PING localhost -n 1 >NUL
    echo -------------------
    PING localhost -n 2 >NUL
    echo Let's close this window and try it out!
    PING localhost -n 2 >NUL
    pause


exit /b

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %~1", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
exit /B