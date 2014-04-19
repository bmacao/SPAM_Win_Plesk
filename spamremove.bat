@echo off
SET domain="https://[API connection string here]/api/domain/remove/domain/%1/"
C:\wget.exe -q --spider --no-check-certificate %domain%
