#!/bin/bash
#cars.sh
#Angela Pham

CHOICE=0

while [ "$CHOICE" -ne 3 ]
do 
	echo "Type 1 to enter a new car."
	echo "Type 2 to display the list of cars."
	echo "Type 3 to quit and exit the program."
	echo -n "Enter a choice number: "; read CHOICE
	case "$CHOICE" in
		1) 
		echo "Enter a year: "
		read YEAR
		echo "Enter a make: "
		read MAKE
		echo "Enter a model: "
		read MODEL
		echo "${YEAR}:${MAKE}:${MODEL}" >> My_old_cars
		;;
		2)
		sort My_old_cars
		;;	
		3)
		echo "Goodbye!"
		;;
	esac
done
	   
