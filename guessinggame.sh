#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
	#Game where you guess how many files in this directory

	#First define how many files
	filecount=`ls -1 | wc -l`

	#Introduction
	echo "Welcome to THE GUESSING GAME!"
	echo "Can you guess how many files are in this directory?"

	#Initial guess
	read guess

	#While loop: if the guess is wrong, then asks player to make another guess
	while [[ $guess -ne $filecount ]]
	do
		if [[ $guess -gt $filecount ]]
		then
			echo "Sorry, your guess was TOO HIGH. Please enter another guess:"
		else
			echo "Sorry, your guess was TOO LOW. Please enter another guess:"
		fi
		read guess
	done

	#While loop fails when the guess is correct
	if [[ $guess -eq $filecount ]]
	then
		echo "Congratulations! Your guess of "$guess" is correct!"
	fi
}

guessinggame
