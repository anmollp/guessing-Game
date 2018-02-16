#!/usr/bin/env bash

num=$(ls | wc -l)

function guessing {
	guess=false
	echo "Enter the number of files in the current directory:"
	while [[ $guess == false ]]
	do	
		read z
		let s=$z-$1
		if [[ $z -lt 0 ]]
			then
				echo "Invalid number. Please try again:"
		elif [[ $s -eq 0 ]]
			then
				guess=true
				echo "Congratulations! You guessed it right!"
		elif [[ $s -le -10 ]]
			then
				echo "Your guessed number is too low. Please try again:"
		elif [[ $s -ge 10 ]]
			then
				echo "Your guessed number is too high. Please try again:"
		else
			echo "You are close. Give another try:"
		fi
	done
}
	
guessing $num
