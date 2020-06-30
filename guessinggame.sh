num_file=$(ls | wc -l)

function guess_game {
	count=3
	while [[ $count -gt 0 ]]
	do		
		read input
		let count=$count-1
		if [[ $input -eq $num_file ]]
		then
			echo "CONGRATULATIONS :) You guessed it! Wohhooooooo"
			let count=0
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
			if [[ $count -eq 0 ]]
			then
				echo "You lost the game! Better luck next time!"
				echo "Correct answer was $num_file"
			else
				echo "You still have $count chances left, try harder"
				echo "Hint: Try a smaller number"
			fi		
		else
			echo "SORRY! That's a wrong answer"
			if [[ $count -eq 0 ]]
			then
				echo "You lost the game! Better luck next time!"num
				echo "Correct answer was $num_file"
			else
				echo "You still have $count chances left, try harder"
				echo "Hint: Try a bigger number"
			fi
		fi
	done
}
echo "Cat has 9 lives! But you only get 3"
echo "Can you guess how many files are there in the current directory? You get 3 lives, bring your A game"
guess_game
