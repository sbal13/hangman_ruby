
user_name = welcome

user = User.new(user_name)


play = 'y'
while play == 'y'
	current_difficulty = difficulty?
	game_instance = Game.new(RandomWords.word_or_phrase?(current_difficulty).downcase, user)

	while !game_instance.won && game_instance.incorrect_attempts < 6
		system("clear")	
		puts game_instance.display_hangman
		puts "You have #{6 - game_instance.incorrect_attempts} guess(es) left!"
		game_instance.guess_final_word_or_letter
	end

	if game_instance.won
		user.wins += 1
		puts "You won!"
		puts "The word/phrase was: "
		puts "'#{game_instance.word.capitalize}'!"
		puts "Your record is #{user.wins} wins to #{user.losses} losses!"
	else 
		user.losses += 1
		puts "You lost!"
		puts "The word/phrase was: "
		puts "'#{game_instance.word.capitalize}'!"
		puts "Your record is #{user.wins} wins to #{user.losses} losses!"
	end

	play = play_again?

end