#!/bin/bash
VAR1=$1
VAR2="--date"
VAR22="-d"
VAR3="--logs"
VAR33="--l"
VAR4="--help"
VAR44="-h"
VAR5="-init"
x=$2

if [ "$VAR1" = "$VAR2" ] | [ "$VAR1" = "$VAR22" ] ; then
    date
elif [  "$VAR1" = "$VAR3" ] | [ "$VAR1" = "$VAR33" ]
then 
	if [ -z $x ]
	then
		x=100
	fi
   for ((i=1; i<=x; i++))
	do
		name="log"$i".txt"
		touch $name
		echo "skrypt.sh" > $name
		date >> $name
	done
elif [  "$VAR1" = "$VAR4" ] | [ "$VAR1" = "$VAR44" ]
then
	echo "--date : -d : Wyswietl date"
	echo "--logs : -l : Stworz logi"
	echo "--logs x : -l x : Stworz x logow"
	echo "--help : -h : Wyswietl pomoc"
elif [ "$VAR1" = "$VAR5" ]
then
	git clone https://github.com/Filip-Gorzelak/lab4.git
	PATH=$PATH/lab4
fi