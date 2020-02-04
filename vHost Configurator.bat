@echo off
echo    ////////////////////////////
echo   /////// virtual Host ///////
echo  /////// Configurator ///////\
echo  \\\\\\\\\\\\\\\\\\\\\\\\\\\\/
echo  //////////////////////////// & echo.


set /p serverName= [Server Name]: 
set /p directory=[Project Directory]:
set httpdDir=C:\Xampp\apache\conf\extra\httpd-vhosts.conf
set hostsDir=c:\Windows\System32\drivers\etc\hosts

echo %hostsDir%

echo 127.0.0.1 %serverName% >> %hostsDir%

echo ^<VirtualHost *:80^> >> %httpdDir%
echo    DocumentRoot "%directory%" >> %httpdDir%
echo    ServerName %serverName% >> %httpdDir%
echo ^</VirtualHost^> >> %httpdDir%

echo done \m/

pause