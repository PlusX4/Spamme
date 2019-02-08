#colors
w='\e[97m'
g='\033[1;92m'
r='\033[1;91m'
a='\033[1;94m'
b='\e[1;4m'
cyan='\033[1;36m'
green='\033[1;32m'
red='\033[1;31m'
yellow='\033[1;33m'
blue='\033[1;34m'
purple='\033[1;35m'
reset='\033[0m'
G='\e[110m'
G1='\e[101m'
o='\033[0m'

clear
echo ""
echo ""
echo ""
echo -e $r "
 ____
/ ___| _ __   __ _ _ __ ___  _ __ ___   ___ 
\___ \| _ \ / _` | `_ ` _ \| `_ ` _ \ / _ \ 
 ___) | |_) | (_| | | | | | | | | | | |  __/
|____/| .__/ \__,_|_| |_| |_|_| |_| |_|\___|
      |_|   $g The Script By :$w Plus-X4
      
"
echo 
echo -e $r "
  [1]$g Spamme send SMS
 $r [2]$g Spamme send Call
 $r [3]$g Spamme send Mail
  
        $r [0]$g Exit 
"
echo -e $w
read -p "[+] Enter Number {> " ip
if [ $ip = 1 ]
then
echo
echo -e $g "[!] Enter Victim's phone number > " Nn
cd Modules/.Spammer-Grab
python2 spammer.py $Nn --delay 60
cd ../..
fi
if [ $ip = 2 ]
then
echo -e $g "[!] Enter Victim's phone number > " Hh
echo -e $g "[!] Enter Many Call > " Mm
cd Modules
php .call.php -x '$Hh' -x 'y' -x '$Mm'
cd ..
fi
if [ $ip = 3 ]
then
echo -e $g "[!] Enter Your Email > " a
echo -e $g "[!] Enter Password > " b
echo -e $g "[!] You Email gmail/yahho > " c
echo
echo -e $g "[!] Enter Victim's Email > " d
echo -e $g "[!] Enter Mesagge > " h
echo -e $g "[!] Enter Many Message > " i

cd Modules
python2 .email.py -x '$c' -x '$a' -x '$b' -x '$d' -x '$h' -x '$i'
cd ..
fi

