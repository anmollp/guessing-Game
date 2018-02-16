all: README.md

README.md: guessinggame.sh
	echo "# The Unix Workbench Assignment" > README.md
	echo "**Make was run on**:" >> README.md
	date >> README.md
	echo "**Number of lines of code in guessinggame.sh:**" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]*" >> README.md
clean:
	rm README.md
	
