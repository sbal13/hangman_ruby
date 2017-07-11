Input file:
	#new_user?
		-Asks user if new. If so, print out rules and prompt for a name
	#difficulty?
		-Ask difficulty level(easy, medium, hard)
	#play_again?
		-Yes/No
	#switch_user?
		-Yes/No
	#guess
		-User's guess



User class file:
	class: User
	accessors: name, wins, losses
	methods: win_loss_ratio, 

Game class file:
	class: game
	reader: word, turn
	methods: display_word, display_guessed_letters, display_hangman, win?, evaluate_guess, correct_guess, incorrect guess

Hangman display file

Random words file.




