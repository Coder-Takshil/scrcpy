@echo off
:: BatchGotAdmin

:-------------------------------------

REM  --> Check for permissions

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM --> If error flag set, we do not have admin.

if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
	
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
	
    "%temp%\getadmin.vbs"
    exit /B
:gotAdmin

    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"

:--------------------------------------
:start
@echo off
set /P c=Do you want to start scrcpy?[Y/N]?  
if /I "%c%" EQU "Y" goto :yes
if /I "%c%" EQU "N" goto :no
goto :start
{
:yes

echo scrcpy is an open-source mobile emulator based on genymotion
echo This script is written by Takshil Mistry to automate scrcpy.
timeout 5
echo Enter "1", "2", "3", "4", "5" for definitions '400', '1024', '1200', '1500', '1900' respectively.
echo enter "d" for the default definition. 
echo Default definition doesn't work properly on some devices.
echo Always try the others first.
echo Meaning of different definitions:
echo 400 is the smallest definition and will show a 184x400 device emulation
echo 1024 is the low quality definition and will show a 472x1024 device emulation
echo 1200 is a good quality definition and will show a 552x1200 device emulation
echo 1500 is a better quality definition and will show a 688x1496 device emulation
echo 1900 is a best quality definition and will show a 880x1896 device emulation
timeout 20
goto :yes
set /P c=Enter your definition number : [1, 2, 3, 4, 5, d] 
if /I "%c%" EQU "1" goto :1
if /I "%c%" EQU "2" goto :2
if /I "%c%" EQU "3" goto :3
if /I "%c%" EQU "4" goto :4
if /I "%c%" EQU "5" goto :5
if /I "%c%" EQU "d" goto :d
{
:1
scrcpy -m 400

set /P c=Did scrcpy crashed on you removing your connected device?[Y/N] 
if /I "%c%" EQU "Y" goto :s
if /I "%c%" EQU "N" goto :e
{
:s

echo wait for 5 seconds we will restart it for you.
timeout 5
scrcpy -m 400
echo Thank you for using scrcpy.....
}
{
:e

echo Thank you for using scrcpy.....
pause && exit
}
}
{
:2
scrcpy -m 1024
set /P c=Did scrcpy crashed on you removing your connected device?[Y/N] 
if /I "%c%" EQU "Y" goto :s
if /I "%c%" EQU "N" goto :e
{
:s

echo wait for 5 seconds we will restart it for you.
timeout 5
scrcpy -m 1024
echo Thank you for using scrcpy.....
}
{
:e

echo Thank you for using scrcpy.....
pause && exit
}
}
{
:3

scrcpy -m 1200
set /P c=Did scrcpy crashed on you removing your connected device?[Y/N] 
if /I "%c%" EQU "Y" goto :s
if /I "%c%" EQU "N" goto :e
{
:s

echo wait for 5 seconds we will restart it for you.
timeout 5
scrcpy -m 1200
echo Thank you for using scrcpy.....
}
{
:e

echo Thank you for using scrcpy.....
pause && exit
}
}
{
:4

scrcpy -m 1500
set /P c=Did scrcpy crashed on you removing your connected device?[Y/N] 
if /I "%c%" EQU "Y" goto :s
if /I "%c%" EQU "N" goto :e
{
:s

echo wait for 5 seconds we will restart it for you.
timeout 5
scrcpy -m 1500
echo Thank you for using scrcpy.....
}
{
:e

echo Thank you for using scrcpy.....
pause && exit
}
}
{
:5

scrcpy -m 1900
set /P c=Did scrcpy crashed on you removing your connected device?[Y/N] 
if /I "%c%" EQU "Y" goto :s
if /I "%c%" EQU "N" goto :e
{
:s

echo wait for 5 seconds we will restart it for you.
timeout 5
scrcpy -m 1900
echo Thank you for using scrcpy.....
}
{
:e

echo Thank you for using scrcpy.....
pause && exit
}
}
{
:d

scrcpy
set /P c=Did scrcpy crashed on you removing your connected device?[Y/N] 
if /I "%c%" EQU "Y" goto :s
if /I "%c%" EQU "N" goto :e
{
:s
echo wait for 5 seconds we will restart it for you.
timeout 5
scrcpy
echo Thank you for using scrcpy.....
}
{
:e
echo Thank you for using scrcpy.....
pause && exit
}
}
}
{
:no
set /P c=Do you really want to exit scrcpy?[Y/N]?  
if /I "%c%" EQU "Y" goto :y
if /I "%c%" EQU "N" goto :n
{
:y
pause && exit
}
{
:n
cd C:\Users\Meggi\Downloads\scrcpy-win64-v1.17
echo Starting scrcpy at the max definition.....
scrcpy -m 1900
echo Thank You for using scrcpy.
pause && exit
}
