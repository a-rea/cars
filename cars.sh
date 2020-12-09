#! /bin/bash
#cars.sh
#Alejandro Rea

echo "Enter a number to choose an option";
while read input
do
	echo "Type 1 to input a new car"
	echo "Type 2 to show the list of cars"
	echo "Type 3 to quit and exit"
	case "$input" in
		1)
			echo "What year model is this car?"
			read year
			echo "What is the make?"
			read make
			echo "What model is the car?"
			read model
			delim=":"
			list="$year$delim$make$delim$model"
			echo -e "\n$list" >> My_old_cars.txt
			;;

		2)
			echo "This is your inventory: "
			sort My_old_cars.txt
			echo "End of file"
			;;

		3)
			break
			;;
	esac
	echo "Goodbye"
done
