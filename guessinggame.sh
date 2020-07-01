num_file=$(ls -1A | wc -l)

function guess_game {
	while true
	do
		read input
		re='^[0-9]+$'
		if ! [[ $input =~ $re ]]
		then
   			echo "Error: Not a valid input"
			echo "Enter a number"
			continue
		fi
		if [[ $input -eq $num_file ]]
		then
			echo "CONGRATULATIONS :) You guessed it! Wohhooooooo"
			echo "You have successfully finished off the game! WINNER !!!"
			echo "Do play again in some time!"
			break
		elif [[ $input -gt $num_file ]]
		then
			echo "SORRY! That's a wrong answer"
			echo "Too High"
			echo "Hint: Try a smaller number, Guess NOW"
		else
			echo "SORRY! That's a wrong answer"
			echo "Too Low"
			echo "Hint: Try a bigger number, GUESS NOW"
		fi
	done
}
echo "Cat has 9 lives! But you get more, anyways try finishing in less tries."
echo "Can you guess how many files are there in the current directory? Bring your A game"
guess_game
echo "Following files are present in directory >>>>-->>>>"
ls -A1
