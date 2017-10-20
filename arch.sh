#!/data/data/com.termux/files/usr/bin/bash
echo
DIRECTORY="/data/data/com.termux/files/usr/share/figlet"
if [ ! -d "$DIRECTORY" ]; then
apt update && apt upgrade && apt install figlet -y
fi
figlet -f mini    .::ARCH-LINUX::.
echo 
figlet Subscribe

T='\033[0;32m'
k='\033[0;31m'
echo "${k}_/_/_/_/_/          _/                  _/          ";
echo "${k}   _/      _/_/_/  _/_/_/      _/_/    _/    _/_/   ";
echo "${k}  _/    _/        _/    _/  _/_/_/_/  _/  _/    _/  ";
echo "${k} _/    _/        _/    _/  _/        _/  _/    _/   ";
echo "${k}_/      _/_/_/  _/    _/    _/_/_/  _/    _/_/      ";
echo "${T}         ▄▄▄       ██▀███   ▄████▄   ██░ ██      ";
echo "${T}        ▒████▄    ▓██ ▒ ██▒▒██▀ ▀█  ▓██░ ██▒     ";
echo "${T}        ▒██  ▀█▄  ▓██ ░▄█ ▒▒▓█    ▄ ▒██▀▀██░     ";
echo "${T}        ░██▄▄▄▄██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒░▓█ ░██      ";
echo "${T}         ▓█   ▓██▒░██▓ ▒██▒▒ ▓███▀ ░░▓█▒░██▓     ";
echo "${T}         ▒▒   ▓▒█░░ ▒▓ ░▒▓░░ ░▒ ▒  ░ ▒ ░░▒░▒     ";
echo "${T}          ▒   ▒▒ ░  ░▒ ░ ▒░  ░  ▒    ▒ ░▒░ ░     ";
echo "${T}          ░   ▒     ░░   ░ ░         ░  ░░ ░     ";
echo "${T}              ░  ░   ░     ░ ░       ░  ░  ░     ";
echo "${T}                           ░                     ";
echo "${T}       ██▓     ██▓ ███▄    █  █    ██ ▒██   ██▒";
echo "${T}      ▓██▒    ▓██▒ ██ ▀█   █  ██  ▓██▒▒▒ █ █ ▒░";
echo "${T}      ▒██░    ▒██▒▓██  ▀█ ██▒▓██  ▒██░░░  █   ░";
echo "${T}      ▒██░    ░██░▓██▒  ▐▌██▒▓▓█  ░██░ ░ █ █ ▒ ";
echo "${T}      ░██████▒░██░▒██░   ▓██░▒▒█████▓ ▒██▒ ▒██▒";
echo "${T}      ░ ▒░▓  ░░▓  ░ ▒░   ▒ ▒ ░▒▓▒ ▒ ▒ ▒▒ ░ ░▓ ░";
echo "${T}      ░ ░ ▒  ░ ▒ ░░ ░░   ░ ▒░░░▒░ ░ ░ ░░   ░▒ ░";
echo "${T}        ░ ░    ▒ ░   ░   ░ ░  ░░░ ░ ░  ░    ░  ";
echo "${T}          ░  ░ ░           ░    ░      ░    ░  ";
echo "${T}                                               ";

echo
echo " --------- Special Thanks To Hax4us, TECHZINDIA ------------ "
echo " ---------- SUBSCRIBE Marcelo Augusto CHANNEL -------------- "
echo
echo
echo " ********** If proot Error Come!!! Don't Worry! ********* "
echo
echo " ********** Just Uninstall Proot And Reinstall ************* "
echo
echo " **************************OR*************************** "
echo
echo " ********** Uninstall Termux And Reinstall ********** "
echo
echo
echo " ----------- Select Your Phone Architecture ------------ "
echo " ---------------------------------------------------- "
echo "1)arm64/armv8 (64 bit)"
echo "2)arm/armhf/armv7 (32 bit)"
echo "3)find your architecture"
read aarch
case $aarch in
1)
echo
echo " prerequisites are installing.......... "
echo
apt install proot wget tar -y
echo
echo " installed successfully... "
echo
echo " Now Arch Linux Is Installing....... "
echo
mkdir arch-arm64 && cd arch-arm64
echo
wget http://archlinuxarm.org/os/ArchLinuxARM-odroid-c2-latest.tar.gz
echo
proot --link2symlink tar -zxvf ArchLinuxARM-odroid-c2-latest.tar.gz
# echo "nameserver 8.8.8.8" > etc/resolv.conf

cd ../ && echo "proot --link2symlink -0 -r arch-arm64 -b /dev/ -b /sys/ -b /proc/ -b /data/data/com.termux/files/home -b /system -b /mnt /usr/bin/env -i HOME=/root PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games TERM=$TERM /bin/bash --login" > startarch.sh

chmod 777 startarch.sh && termux-fix-shebang startarch.sh

echo
echo "Now You Can Start Arch Linux By :--> ./startarch.sh"
echo 
;;
2)
echo "prerequisites are installing.........."
echo
apt install proot wget tar -y
echo
echo "installed successfully...."
echo
echo "Now Arch Linux Is Installing......."
echo
mkdir arch-armhf && cd arch-armhf
echo
wget http://os.archlinuxarm.org/os/ArchLinuxARM-odroid-c1-latest.tar.gz
echo
proot --link2symlink tar -zxvf ArchLinuxARM-odroid-c1-latest.tar.gz
# echo "nameserver 8.8.8.8" > etc/resolv.conf

cd ../ && echo "proot --link2symlink -0 -r arch-armhf -b /dev/ -b /sys/ -b /proc/ -b /data/data/com.termux/files/home -b /system -b /mnt /usr/bin/env -i HOME=/root PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games TERM=$TERM /bin/bash --login" > startarch.sh

chmod 777 startarch.sh && termux-fix-shebang startarch.sh


echo
echo "Now You Can Start Arch Linux By :--> ./startarch.sh"
echo 

;;
3)
echo
echo "Your phone architecture is :-"
aarch=`dpkg --print-architecture`
if [ $aarch = "aarch64" ] ; then
echo
echo "bad luck you are using aarch64 so try your luck because it is not personally tested on aarch64..!!"
else
echo
echo $aarch
fi
;;
esac