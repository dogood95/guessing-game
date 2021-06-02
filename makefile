
readme.md:
	echo "**This project is titled:** \n# Guessing Game" > readme.md
	echo "\n**`make` was run on:** " >> readme.md
	date +%c >> readme.md
	echo "\n**Number of lines in the game file:** " >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
