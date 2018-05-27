clear
cy='\e[0;36m'
lg='\e[1;32m'
ye='\e[1;33m'
re='\e[1;31m'

echo " "
echo " "
echo -e $ye "             <${cy}==${ye}[ ${re}Author ${lg}Info ${ye}]${cy}==${ye}>"
echo ""
echo ""
echo ""
echo ""
sleep 1
echo -e $lg "   Author  ${lg}:${ye} Harsh${cy} Mishra "
sleep 1
echo ""
echo -e $cy "   GitHub  ${lg}:${ye} https://github.com/GhosTmaNHarsh"
sleep 1
echo ""
echo -e $re "   YouTube ${lg}:${ye} harsh ki vani"
sleep 1
echo " "
termux-tts-speak do nott forget to Subscribe  Harsh ki Vani youtube channel and keep motivating
echo " "
echo " "
echo -n -e $lg "Press enter to continue....." 
read hola
clear
figlet -f smmono12 " Sign-up" | lolcat
echo -e $ye " +----------------------------------------+"
echo -e $ye " | ${lg}[${re}U${lg}] ${re}Generate a Username      ${ye}          |"
echo -n -e $ye " | ${lg}[${re}U${lg}] : ${cy}"
read use
echo -e $ye " |----------------------------------------|"
echo -e $ye " | ${lg}[${re}P${lg}] ${re}Generate a Password      ${ye}          |"
echo -n -e $ye " | ${lg}[${re}P${lg}] : ${cy}"
read pass
echo -e $ye " +----------------------------------------+"
sleep 1
echo "$use" >> $PREFIX/tmp/name.txt
echo "$pass" >> $PREFIX/tmp/i.txt
rm -f setup.sh
clear
echo " "
echo -e $ye " Username :${re} $use" 
echo " "
echo -e $ye " Password :${re} $pass"
echo " "
termux-tts-speak  Do not forget this Username and password
echo " "
echo -n -e $lg " Now Restart your${ye} Termux${lg} Application "
read joke
killall -9 com.termux 
