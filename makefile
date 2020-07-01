readme : guessinggame.sh
	touch README.md
	echo "Hello and Welcome to an amazing guessing game"
	echo "# WELCOME TO UNIX PHOENIX" > README.md
	echo "\n## This is an auto-generated README.MD file" >> README.md
	echo "\n*Title of the project :* **UNIX PHOENIX**" >> README.md
	echo "\n *Date:*" >> README.md
	date >> README.md
	echo "\n *Number of lines in file guessinggame.sh:*" >> README.md
	cat guessinggame.sh | wc -l >> README.md
	echo "\n\n **Done by: _Priyanshu Mehta_**" >> README.md
