num_file=$(ls | wc -l)

function guess_game {		
	read input
	re='^[0-9]+$'
	if ! [[ $input =~ $re ]]
	then
   		echo "Error: Not a valid input"
		echo "Enter a number"
		guess_game
	fi
	if [[ $input -eq $num_file ]]
	then
		echo "CONGRATULATIONS :) You guessed it! Wohhooooooo"
		echo "  Following files are present in directory >>>>-->>>>"
		for file in $(ls)
		do
			echo "  - $file , "
		done
		echo "You have successfully finished off the game! WINNER !!!"
		echo "Do play again in some time!"
	elif [[ $input -gt $num_file ]]
	then
		echo "SORRY! That's a wrong answer"
		echo "Too High"
		echo "Hint: Try a smaller number, Guess NOW"
		guess_game
	else
		echo "SORRY! That's a wrong answer"
		echo "Too Low"
		echo "Hint: Try a bigger number, GUESS NOW"
		guess_game
	fi
}
echo "Cat has 9 lives! But you get more, anyways try finishing in less tries."
echo "Can you guess how many files are there in the current directory? Bring your A game"
guess_game
