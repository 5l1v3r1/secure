pu='\033[1;35m'
cy='\e[0;36m'
lg='\e[1;32m'
ye='\e[1;33m'
re='\e[1;31m'

function secure(){

clear
v=`cat $PREFIX/tmp/i.txt`
p=$v
l=`cat $PREFIX/tmp/name.txt`
n=$l

if [ ! -f "$PREFIX/tmp/name.txt" ]
 then
	chmod 777 login
	chmod 777 setup.sh
	./setup.sh
fi

figlet -f smmono9 " Login Panel" | lolcat
echo -e $lg "                                -${ye} HAR${cy}SH MI${re}SHRA"
echo -e $ye " +--------------------------------------------+"
echo -n -e $ye " |${lg} [${pu}+${lg}] ${re}Enter the Username${ye}:> ${cy}"
read name
if [ $name == $n ]
 then
        echo -e $ye " +--------------------------------------------+"
        echo -n -e $ye " | ${lg}[${pu}+${lg}] ${re}Enter the Password${ye}:> ${cy}"
        read pass
        echo -e $ye " +--------------------------------------------+"
        if [ $pass == $p ]
         then
              clear
              echo -e $ye "          [${cy}____${lg}[ ${ye} Welcome${re} $name ${lg}]${cy}____${ye}] "
	      termux-tts-speak Welcome $name
	      echo " "
	      cd $HOME
         else
             clear
             echo " +----------------------------------------------+" | lolcat
             echo " |     [-] Invalid Password...........          |" | lolcat
             echo " +----------------------------------------------+" | lolcat
             echo ""
	     termux-tts-speak You cannot access Termux for some security Reason
             killall -9 com.termux
        fi
 else
     clear
     echo " +----------------------------------------------+" | lolcat
     echo " |     [-] Invalid Username.............        |" | lolcat
     echo " +----------------------------------------------+" | lolcat
     echo ""
     termux-tts-speak You cannot access Termux for some security Reason
     killall -9 com.termux
fi

}
trap ctrl_c INT
function ctrl_c() {

    termux-tts-speak You cannot use control+c module here
    secure

}

secure
