@echo off
SET domain="https://[API Connection String here]/api/domain/add/domain/%1/destinations/%%5B%%22mail.%1%%22%%5D/"
C:\wget.exe -q --spider --no-check-certificate %domain%

for /f "tokens=1,2 delims=," %%a in (c:\\passwd.txt)  do (set pwd=%%a & set email=%%b )

set pwd=%pwd: =%
set email=%email: =%

SET login="https://API Connection String here]/api/domainuser/add/domain/%1/password/%pwd%/email/%email%/"

C:\wget.exe -q --spider --no-check-certificate %login%

echo "" > c:\\passwd.txt
