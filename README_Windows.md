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

Steps to install the Folder on Windows : 
:arrow_right: Just install the folder or .zip file from this link: https://www.mediafire.com/folder/j55athrxs9vwa/scrcpy
Or,
:arrow_right: If you are not able to install from the mediafire website, Download scrcpy from the .zip file: scrcpy-win64-v1.17.zip provided in : https://github.com/Coder-Takshil/scrcpy

:arrow_right: Extract the file and copy the files : Scrcpy_automater_for_users64bit.exe and scrcpy_for_users32bit.bat provided in : https://github.com/Coder-Takshil/scrcpy : to the extracted folder of scrcpy-win64-v1.17 and perform the steps below.

Steps to install scrcpy on Windows :

:arrow_right: Just install the Folder - Link is provided below (U can trust me I am not gonna upload any virus...).

:arrow_right: Open the folder, If you are a 64 bit user, check for the file: Scrcpy_automater_for_users64bit.exe .
 
:arrow_right: If you are a 32 bit user, check for the file : scrcpy_for_users32bit.bat (Sorry i couldnt make an .exe for 32 bit coz i am a 64 bit user)

:arrow_right: Double click it and give admin privileges (In the Prompt select 'yes'). 

:arrow_right: After then you know what you have to do.

Want more help reach me out at the issues column : https://github.com/Coder-Takshil/scrcpy/issues
Or,
:arrow_right: Press Windows key + R, In the prompt type : cmd.exe and press Enter Key.

:arrow_right: On the Command Line cd into the directory of scrcpy with : cd path\to\file (To find : Open Windows explorer with : Windows key + E and go to the directory and besides the Search Tab, click the empty space and copy the path and replace path\to\file with the path you copied.)

:x: If you get a "TRY A LOWER DEFINITION ERROR", try using scrcpy with : scrcpy -m 1900.

:x: If you get a "more than one device/emulator" error then find your device with : adb devices -l and then start scrcpy with : scrcpy -s xxxxxxxxxxxxxxxx (Where xxxxxxxxxxx is the device serial number)

:x: If you get a "TRY A LOWER DEFINITION ERROR" with "more than one device/emulator", error then find your device with : adb devices -l and then start scrcpy with : scrcpy -m 1900 -s xxxxxxxxxxxxxxxx (Where xxxxxxxxxxx is the device serial number)

If you get more errors feel free to create an issue at : https://github.com/Coder-Takshil/scrcpy/issues
