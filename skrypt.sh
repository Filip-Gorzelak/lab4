#!/bin/bash
VAR1=$1
VAR2="--date"
VAR22="-d"
VAR3="--logs"
VAR4="--help"
VAR44="-h"
VAR5="--init"
VAR6="--error"
x=$2
if [ -z $x ]
	then
		x=100
	fi

if [ "$VAR1" = "$VAR2" ] || [ "$VAR1" = "$VAR22" ] ; then #date
    date
elif [ "$VAR1" = "$VAR3" ] || [ "$VAR1" = "$VAR33" ] #logs
then 
   for ((i=1; i<=x; i++))
	do
		named="log"$i
		name="log"$i".txt"
		mkdir $named
		touch $named/$name
		echo "skrypt.sh" > $named/$name
		date >> $named/$name
	done
elif [  "$VAR1" = "$VAR4" ] || [ "$VAR1" = "$VAR44" ] #help
then
	echo "--date : -d : Wyswietl date"
	echo "--logs : -l : Stworz logi"
	echo "--logs x : -l x : Stworz x logow"
	echo "--help : -h : Wyswietl pomoc"
elif [ "$VAR1" = "$VAR5" ] #init
then
	git clone "https://github.com/Filip-Gorzelak/lab4.git"
	export PATH=$PATH/lab4
elif [ "$VAR1" = "$VAR6" ] #error
then 
   for ((i=1; i<=x; i++))
	do
		named="error"$i
		name="error"$i".txt"
		mkdir $named
		touch $named/$name
		echo "skrypt.sh" > $named/$name
		date >> $named/$name
	done
fi