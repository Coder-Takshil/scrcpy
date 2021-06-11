I don't know much about MacOS because I am a newbie to Mac.

This is the automator app for the mobile emulator scrcpy.
Understand more about scrcpy at my README.md.

Steps to enable scrcpy on your android device :

:arrow_right: Go to settings>About Phone ----> And tap the build number several times till a pop up saying "You Are Already A Developer" or if your device is protected with a screen lock there will be a prompt to confirm it's you, Enter the Pin/Password/Pattern/Fingerprint/Face unlock. (In some cases : Settings>System>About phone)

:arrow_right: After enabling Developer mode, Exit Settings and again open settings.

:arrow_right: Go to Settings>Scroll Down to Developer options and click Developer options.

:arrow_right: Scroll down and find : ADB Debugging and enable the option.

:arrow_right: Now connect your Computer and Android Device through a USB cable.

:arrow_right: Check your mobile, Gotcha! You should see a prompt Allow USB Debugging on this device and some RSA fingerprint key.

:arrow_right: Tick the checkbox saying "Always Allow Debugging on this computer" and click ok..

Simply install scrcpy with :

:arrow_right: brew install scrcpy

:arrow_right: brew install android-platform-tools

:arrow_right: sudo port install scrcpy

:arrow_right: Start scrcpy with : scrcpy

Or,

:x: If you get a "TRY A LOWER DEFINITION ERROR", try using scrcpy with : scrcpy -m 1900.

:x: If you get a "more than one device/emulator" error then find your device with : adb devices -l and then start scrcpy with : scrcpy -s xxxxxxxxxxxxxxxx (Where xxxxxxxxxxx is the device serial number)

:x: If you get a "TRY A LOWER DEFINITION ERROR" with "more than one device/emulator", error then find your device with : adb devices -l and then start scrcpy with : scrcpy -m 1900 -s xxxxxxxxxxxxxxxx (Where xxxxxxxxxxx is the device serial number)

If you get more errors feel free to create an issue at : https://github.com/TackyGaming6/scrcpy/issues
