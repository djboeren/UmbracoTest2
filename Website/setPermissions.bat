@echo off
echo About to set ACLS permissions for Umbraco
pause
REM Following line in original script incorrectly sets all child folder permissions
REM icacls . /grant "NETWORK SERVICE":(OI)(CI)M
icacls app_code /grant "NETWORK SERVICE":(OI)(CI)RX
icacls app_browsers /grant "NETWORK SERVICE":(OI)(CI)RX
icacls app_data /grant "NETWORK SERVICE":(OI)(CI)M
icacls bin /grant "NETWORK SERVICE":(OI)(CI)M
icacls config /grant "NETWORK SERVICE":(OI)(CI)M
icacls css /grant "NETWORK SERVICE":(OI)(CI)M
icacls data /grant "NETWORK SERVICE":(OI)(CI)M
icacls masterpages /grant "NETWORK SERVICE":(OI)(CI)M
icacls media /grant "NETWORK SERVICE":(OI)(CI)M
icacls python /grant "NETWORK SERVICE":(OI)(CI)M
icacls scripts /grant "NETWORK SERVICE":(OI)(CI)M
icacls umbraco /grant "NETWORK SERVICE":(OI)(CI)M
icacls usercontrols /grant "NETWORK SERVICE":(OI)(CI)M
icacls xslt /grant "NETWORK SERVICE":(OI)(CI)M
icacls views /grant "NETWORK SERVICE":(OI)(CI)M
icacls web.config /grant "NETWORK SERVICE":(OI)(CI)M
icacls web.config /grant "NETWORK SERVICE":M
REM If you have installed the Robots.txt editor package you need the following line too
REM icacls robots.txt /grant "NETWORK SERVICE":M