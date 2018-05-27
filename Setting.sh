function menu(){

clear
figlet -f smmono12 " Setting" | lolcat
echo " +---------------------------------------------+"
echo " |                Setting Menu                 |" | lolcat
echo " +---------------------------------------------+"
echo " |  [ 1 ] Change Username and Password         |"
echo " |  [ 2 ] Update                               |"
echo " |  [ 3 ] About Author                         |"
echo " |  [ e ] Exit                                 |"
echo " +---------------------------------------------+"
echo " "
echo -n " [ Setting ] : "
read se
case $se in
	1) change
	;;
	2) update
	;;
	3) about
	;;
	e) clear
	   echo " +-------------------------------------------+"
           echo " |  Thanks for using this tool   (^_^ )/     |" | lolcat
           echo " +-------------------------------------------+"
	   echo " "
	   exit
	;;
	*) clear
	   echo " +-------------------------------------------+"
           echo " |             INVALID INPUT                 |" | lolcat
           echo " +-------------------------------------------+"
	   sleep 1
	   menu
	;;
esac

}

function update(){

	git reset --hard > /dev/null 2>&1
	git pull

}

function about(){

	clear
	echo " "
	echo " "
	echo "    Author          :  Harsh Mishra "
	sleep 1
	echo " "
	echo "    YouTube Channel :  Harsh ki vani"
	echo " "
	sleep 1
	echo "  Guys just be supporting me and motivating " | lolcat
 	echo "  me for more new tools and much more things " | lolcat
	echo " "
	echo " "
	echo "		           - Thank you to all" | lolcat
	echo "	          	      my subscribers" | lolcat
	echo " "
	sleep 1
	echo " "
	echo -n " press enter to continue........." | lolcat
	read FA
	menu

}


function change(){

clear
 p=`cat $PREFIX/tmp/i.txt`
 u=$p
na=`cat $PREFIX/tmp/name.txt`
me=$na
figlet -f smmono12 "  Change "| lolcat
figlet -f smmono12 " Password" | lolcat
 echo " +--------------------------------------------+"
 echo " |         Enter your Old Password            |" | lolcat
 echo " +--------------------------------------------+"
 echo -n " | Old Password : " | lolcat
 read x
if [ $x == $u ]
then

clear
 figlet -f smmono12 "  Change "| lolcat
 figlet -f smmono12 " Username" | lolcat
 echo " +--------------------------------------------+"
 echo " |         Enter your Old Username            |" | lolcat
 echo " +--------------------------------------------+"
 echo -n " | Old Username : " | lolcat
 read z
        if [ $me == $z ]
         then
	     	clear
	     	echo " +--------------------------------------------+"
            	echo " |         Enter your New Username            |" | lolcat
             	echo " +--------------------------------------------+"
       	     	echo -n " [ Username ] : " | lolcat
	     	read naam
	     	rm -f $PREFIX/tmp/name.txt
	     	echo $naam >> $PREFIX/tmp/name.txt
	     	echo " "
		echo " "
	     	echo " +----------------------------------------------+"
             	echo " |         Enter your New Password              |" | lolcat
             	echo " +----------------------------------------------+"
	     	echo -n " [ Password ] : " | lolcat 
	     	read worp
	     	rm -f $PREFIX/tmp/i.txt
	     	echo $worp >> $PREFIX/tmp/i.txt
	     	clear
	     	echo " +--------------------------------------------+"
             	echo " |             Your Updated Data              |" | lolcat
             	echo " +--------------------------------------------+"
		echo " "
		echo "      USERNAME  :   $naam " | lolcat
		echo " "
		echo "      PASSWORD  :   $worp " | lolcat
		echo " "

         else
		clear
 		echo " +--------------------------------------------+"
 		echo " |             INCORRECT USERNAME             |" | lolcat
 		echo " +--------------------------------------------+"
		sleep 1
		exit
        fi
 else
	clear
	echo " +--------------------------------------------+"
	echo " |             INCORRECT PASSWORD             |" | lolcat
 	echo " +--------------------------------------------+"
	sleep 1
	exit
fi

}
menu
