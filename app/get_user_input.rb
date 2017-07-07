
def welcome
	puts "Welcome to Hangman!"
	puts "Please enter a name:"
	name = gets.chomp
end


def difficulty?
	puts "Would you like to play with single words or phrases?"
	puts "Enter 'S' for single words or 'P' for phrases:"
	difficulty = gets.chomp.downcase

	if (difficulty == 's' || difficulty == 'p') 
		difficulty 
	else
		puts "That is not a valid input, please try again!"
		puts ""
		sleep(1)
		difficulty?
	end
end	


def play_again?
	puts "Would you like to play another game? (Y/N) "
	play = gets.chomp.downcase

	if (play == 'y' || play == 'n') 
		play
	else
		puts "That is not a valid input, please try again!"
		puts ""
		sleep(1)
		play_again?
	end	
end

def switch_user?
	puts "Would you like to switch users? (Y/N) "
	switch = gets.chomp.downcase

	if (switch == 'y' || switch == 'n') 
		switch 
	else
		puts "That is not a valid input, please try again!"
		puts ""
		sleep(1)
		switch_user?
	end	
end

def obtain_guess
	puts "Please guess a letter: "
	guess = gets.chomp.downcase

	if guess =~ /[[:alpha:]]/
		guess
	else
		puts "That is not a valid input, please try again!"
		puts ""
		sleep(1)
		obtain_guess
	end
end