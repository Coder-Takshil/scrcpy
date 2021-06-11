while true; do
    read -p "Do you wish to install scrcpy?
If You have already downloaded scrcpy type "d" [Y/N/D]" ynd
    case $ynd in
        [Yy]* ) while true; do
    read -p "Type "Debian", "Arch", "ManualBuild", "Git",
or "Snap" for your desired distribution. Option MaunualBuild is
only available for Debian/Ubuntu :" lidi
    case $lidi in
        [Git]* ) git clone https://github.com/Coder-Takshil/scrcpy.git;break;;
        [Debian]* ) sudo apt install scrcpy;sleep 5;break;;
        [Arch]* ) git clone https://aur.archlinux.org/scrcpy.git;cd scrcpy;./install_release.sh;break;;
        [ManualBuild]* ) # for Debian/Ubuntu
sudo apt install ffmpeg libsdl2-2.0-0 adb wget \
                 gcc git pkg-config meson ninja-build \
                 libavcodec-dev libavformat-dev libavutil-dev libsdl2-dev;git clone https://github.com/Genymobile/scrcpy;cd scrcpy;./install_release.sh;break;;
        [Snap]* ) systemctl restart snapd.service; snap install scrcpy;break;; 
    esac
done;break;;
        [Dd]* ) break;;
        [Nn]* ) exit;;
        
    esac
done

while true; do
    read -p "Do you wish to start scrcpy? [Y/N]?" styn
    case $styn in
        [Yy]* ) echo scrcpy is an open-source mobile emulator based on genymotion.;echo for more information visit : https://github.com/genymobile/scrcpy;echo ;echo This script is written by Takshil Mistry to automate scrcpy.;sleep 5;break;;
        [Nn]* ) exit;;
        esac
done
echo 
echo Default definition does not work properly on some devices.
    echo Always try the others first.
    echo 
    sleep 5
    echo Meaning of different definitions:
    echo 400 is the smallest definition and will show a 184x400 device emulation
    echo 1024 is the low quality definition and will show a 472x1024 device emulation
    echo 1200 is a good quality definition and will show a 552x1200 device emulation
    echo 1500 is a better quality definition and will show a 688x1496 device emulation
    echo 1900 is a best quality definition and will show a 880x1896 device emulation
    
    sleep 10
while true; do
    read -p "Enter "1", "2", "3", "4", "5" for definitions '400', '1024', '1200', '1500', '1900' respectively.
Enter "d" for the default definition. " choice
    case $choice in
        [1]* ) scrcpy -m 400;while true; do
    read -p "Did scrcpy crashed on you removing your connected device?[Y/N]?" crash
    case $crash in
        [Yy]* ) echo Wait for 5 seconds we will restart it for you.;sleep 5;scrcpy -m 400;echo Thank you for using scrcpy.....;break;;
        [Nn]* ) exit;;
        
    esac
done;break;;
        [2]* ) scrcpy -m 1024;while true; do
    read -p "Did scrcpy crashed on you removing your connected device?[Y/N]?" crashf
    case $crashf in
        [Yy]* ) echo Wait for 5 seconds we will restart it for you.;sleep 5;scrcpy -m 1024;echo Thank you for using scrcpy.....;break;;
        [Nn]* ) exit;;
        
    esac
done;break;;
        [3]* ) scrcpy -m 1200;while true; do
    read -p "Did scrcpy crashed on you removing your connected device?[Y/N]?" crasht
    case $crasht in
        [Yy]* ) echo Wait for 5 seconds we will restart it for you.;sleep 5;scrcpy -m 1200;echo Thank you for using scrcpy.....;break;;
        [Nn]* ) exit;;
        
    esac
done;break;;
        [4]* ) scrcpy -m 1500;while true; do
    read -p "Did scrcpy crashed on you removing your connected device?[Y/N]?" crash3fif
    case $crashfif in
        [Yy]* ) echo Wait for 5 seconds we will restart it for you.;sleep 5;scrcpy -m 1500;echo Thank you for using scrcpy.....;break;;
        [Nn]* ) exit;;
        
    esac
done;break;;
        [5]* ) scrcpy -m 1900;while true; do
    read -p "Did scrcpy crashed on you removing your connected device?[Y/N]?" crashfo
    case $crashfo in
        [Yy]* ) echo Wait for 5 seconds we will restart it for you.;sleep 5;scrcpy -m 1900;echo Thank you for using scrcpy.....;break;;
        [Nn]* ) exit;;
        
    esac
done;break;;
        [d]* ) scrcpy;while true; do
    read -p "Did scrcpy crashed on you removing your connected device?[Y/N]?" crashfiv
    case $crashfiv in
        [Yy]* ) echo Wait for 5 seconds we will restart it for you.;sleep 5;scrcpy;echo Thank you for using scrcpy.....;break;;
        [Nn]* ) exit;;
        
    esac
done;break;;
        * ) echo "Please answer yes or no.";;
        
    esac
done
