@echo off
@chcp 65001
set location=%cd%
copy "TUNI Lähdeluettelo.xsl" "C:\users\%username%\AppData\Roaming\Microsoft\Bibliography\Style\TUNI Lähdeluettelo.xsl"
if exist "C:\users\%username%\AppData\Roaming\Microsoft\Bibliography\Style\TUNI Lähdeluettelo.xsl" (
echo "Lähdeluettelon tyylitiedosto kopioitu."
)
else (
echo "Lähdeluettelon tyylitiedoston kopioinnissa tapahtui virhe."
)
pause