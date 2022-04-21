#!/bin/bash
VAR1=$1
VAR2="--date"
VAR22="-d"
VAR3="--logs"
VAR33="--l"
VAR4="--help"
VAR44="-h"
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
	echo "--date : Wyswietl date"
	echo "--logs : Stworz logi"
	echo "--logs x : Stworz x logow"
fi