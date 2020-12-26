#!/usr/bin/env bash

echo "---------------- Guessing Game ----------------"

currentDirectory=$(ls -1 | wc -l)
guess=0

function communication {
	echo "How many files are in the current directory?"
	read  guess
}


function validate {
	while [[ $currentDirectory -ne $guess ]]
	do
		communication

		if [[ $guess -lt $currentDirectory ]]; then
			echo "Your answer was low. Try again..."
		elif [[ $guess -gt $currentDirectory ]]; then
			echo "Your answer was high. Try again..."
		elif [[ $currentDirectory -eq $guess ]]; then
			echo "You won. Congratulations!"
		else
			echo "Your answer is wrong. Try again..."
		fi
	done
}

validate

echo "-----------------------------------------------"
