I don't know much about MacOS because I am a newbie to Mac.

Simply install scrcpy with :

:arrow_right: brew install scrcpy

:arrow_right: brew install android-platform-tools

:arrow_right: sudo port install scrcpy

:arrow_right: Start scrcpy with : scrcpy

Or,

:arrow_right: If you get a "TRY A LOWER DEFINITION ERROR", try using scrcpy with : scrcpy -m 1900.

:arrow_right: If you get a "more than one device/emulator" error then find your device with : adb devices -l and then start scrcpy with : scrcpy -s xxxxxxxxxxxxxxxx (Where xxxxxxxxxxx is the device serial number)

