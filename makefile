README.md: guessinggame.sh
	echo "# GUESSING GAME" > README.md
	echo "**Make was run at: `date '+%Y-%m-%d %H:%M:%S'`**<br>" >> README.md
	echo "**In guessinggame.sh there are `wc -l guessinggame.sh | egrep -o "[0-9]+"` lines of code**" >> README.md	

clean:
	rm -f README.md
