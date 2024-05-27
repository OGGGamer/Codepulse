@echo off
setlocal

rem Set the path to the batch script that will handle CPF files
set "batch_script_path=C:\Users\sross\Videos\.codepulse\run_script.bat"

rem Set the icon path
set "icon_path=C:\Users\sross\Downloads\codePulse.ico"

rem Create registry keys and values
reg add "HKEY_CLASSES_ROOT\.cpf_auto_file" /ve /d "cpf_auto_file" /f
reg add "HKEY_CLASSES_ROOT\cpf_auto_file" /v "AlwaysShowExt" /d "" /f
reg add "HKEY_CLASSES_ROOT\cpf_auto_file\shell\open" /ve /d "Open with MyProgram" /f
reg add "HKEY_CLASSES_ROOT\cpf_auto_file\shell\open\command" /ve /d "\"%batch_script_path%\" \"%1\"" /f
reg add "HKEY_CLASSES_ROOT\cpf_auto_file\DefaultIcon" /ve /d "\"%icon_path%\",0" /f

echo File association for .cpf files has been configured.

pause