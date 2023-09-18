@echo off
@chcp 65001
set location=%cd%
echo .

REM Check if the parent folder for the bibliography style exists
if exist "C:\users\%username%\AppData\Roaming\Microsoft\Bibliography\" (

REM If it does not exist create it
) else (
    mkdir "C:\users\%username%\AppData\Roaming\Microsoft\Bibliography\"
    echo Luotiin kansio "Bibliography"
)

REM Check if the folder for the bibliography style exists
if exist "C:\users\%username%\AppData\Roaming\Microsoft\Bibliography\Style\" (

REM If the folder does not exist create it
) else (
    mkdir "C:\users\%username%\AppData\Roaming\Microsoft\Bibliography\Style\"
    echo Luotiin kansio "Style"
)

echo .

REM Try to copy the bibliography style
copy "TUNI Lähdeluettelo.xsl" "C:\users\%username%\AppData\Roaming\Microsoft\Bibliography\Style\TUNI Lähdeluettelo.xsl"

echo .

REM Check if the copy operation was successful
if exist "C:\users\%username%\AppData\Roaming\Microsoft\Bibliography\Style\TUNI Lähdeluettelo.xsl" (
echo Lähdeluettelon tyylitiedosto kopioitu.

REM Display an error message if the operation failed
) else (
echo Lähdeluettelon tyylitiedoston kopioinnissa tapahtui virhe.
)

echo .
pause