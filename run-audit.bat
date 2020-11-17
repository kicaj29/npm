@echo off
npm audit
if %ERRORLEVEL% GEQ 1 (echo "vulnerabilities") else (echo "no issues") 
