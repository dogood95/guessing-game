
README.md:
	echo "**This project is titled:** \n# Guessing Game" > README.md
	echo "\n**\`make\` was run on:** " >> README.md
	date +%c >> README.md
	echo "\n**Number of lines in the game file:** " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
