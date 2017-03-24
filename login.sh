#!/bin/bash
#Autor:Jesus
clear
USUARIO=vagrant
SENHA=vagrant
SAIR=nao
while [ $SAIR != "SAI" ];do
clear
echo
echo "Debian GNU/Linux 8 jessie tty"
QNT=1
while (( $QNT <= 5 )); do
echo -n "jessie login:"
read LOGIN
echo -n "Password:"
read -s PASSWD
echo
	if [ $LOGIN == $USUARIO ]; then
		if [ $PASSWD == $SENHA ]; then
				SAIR="SAI"
				QNT=6
		echo "You was Logged"
		else
		echo "login incorrect"
		fi
	else
	echo "Login incorrect"
	fi
done
done
