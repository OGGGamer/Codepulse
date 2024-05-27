@echo off
setlocal
set "cpf_file=%~1"
set "output_file=output.txt"

if exist "%cpf_file%" (
    type "%cpf_file%" > "%output_file%"
    pause
    exit /b 0
) else (
    echo Error: File "%cpf_file%" not found.
    pause
    exit /b 1
)
