clear
if [ ! -d "$PREFIX/tmp"]
 then
	mkdir tmp
fi
pkg install figlet -y > /dev/null 2>&1
figlet -f small  "Basic Installation"
cp -f $PREFIX/etc/bash.bashrc $HOME/secure/hola
cat security.sh hola >> final
rm -f hola
mv -f final bash.bashrc
rm -f $PREFIX/etc/bash.bashrc
mv -f $HOME/secure/bash.bashrc $PREFIX/etc/
rm -f security.sh
chmod 777 *
pkg install termux-api -y
pkg install ruby -y
gem install lolcat -y
pkg install toilet -y

./login
