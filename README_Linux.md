This is the automator app for the mobile emulator scrcpy.
Understand more about scrcpy at my README.md.


Steps to enable scrcpy on your android device :


:arrow_right: Go to settings>About Phone ----> And tap the build number several times till a pop up saying "You Are Already A Developer" or if your device is protected with a screen lock there will be a prompt to confirm it's you, Enter the Pin/Password/Pattern/Fingerprint/Face unlock. (In some cases : Settings>System>About phone)


:arrow_right: After enabling Developer mode, Exit Settings and again open settings.

:arrow_right: Go to Settings>Scroll Down to Developer options and click Developer options.

:arrow_right: Scroll down and find : ADB Debugging and enable the option.

:arrow_right: Now connect your Computer and Android Device through a USB cable.

:arrow_right: Check your mobile, Gotcha! You should see a prompt Allow USB Debugging on this device and some RSA fingerprint key.

:arrow_right: Tick the checkbox saying "Always Allow Debugging on this computer" and click ok.

Steps to install scrcpy :


Sorry for bad shell scripting in advance. Please give your suggestions so that I can update my .sh file

:arrow_right: First clone this repository to your linux with the command : git clone https://github.com/Coder-Takshil/scrcpy.git

:arrow_right: Open the folder and check for the file : scrcpy_for_linuxusers.sh, right click the file and select "COPY FILE LOCATION"

:arrow_right: Open A terminal with Ctrl + Alt + T or from the start menu.

:arrow_right: Type : sudo su, enter your password. chmod +x path/to/location/copied/file

:arrow_right: now type : ./path/to/location/copied/file


Ahead is your decision.....


Or,

:x: If you get a "TRY A LOWER DEFINITION ERROR", try using scrcpy with : scrcpy -m 1900.

:x: If you get a "more than one device/emulator" error then find your device with : adb devices -l and then start scrcpy with : scrcpy -s xxxxxxxxxxxxxxxx (Where xxxxxxxxxxx is the device serial number)

:x: If you get a "TRY A LOWER DEFINITION ERROR" with "more than one device/emulator", error then find your device with : adb devices -l and then start scrcpy with : scrcpy -m 1900 -s xxxxxxxxxxxxxxxx (Where xxxxxxxxxxx is the device serial number)

If you get more errors feel free to create an issue at : https://github.com/Coder-Takshil/scrcpy/issues
