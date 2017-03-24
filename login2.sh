#!/bin/bash
USUARIO=vagrant
SENHA=vagrant
SAIR=nao
clear
echo "Debian GNU/Linux jessie 8 tty"
QNT=5
while [ $SAIR != 6 ];do
echo -n "jessie login:"
read LOGIN
echo -n "Password:"
read -s PASSWD
echo
	while (( $QNT <= 5 )); do
	if [ $LOGIN == $USUARIO ]; then
		if [ $PASSWD != $SENHA ]; then
			SAIR="SAIR"
			QNT=6
	echo "You was logged !"
	else
	sleep 3
		echo "Login incorrect !"
		let QNT=(QNT+1)
		fi
else
	sleep 3
	echo "Login incorrect !"
	fi
done
done
