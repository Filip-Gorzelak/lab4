#!/bin/bash
VAR1=$1
VAR2="--date"
VAR3="--logs"
VAR4="--help"
x=$2

if [ "$VAR1" = "$VAR2" ]; then
    date
elif [  "$VAR1" = "$VAR3" ]
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
elif [  "$VAR1" = "$VAR4" ]
then
	echo "--date : Wyswietl date"
	echo "--logs : Stworz logi"
	echo "--logs x : Stworz x logow"
fi