class Game

	attr_accessor :word, :user
	attr_reader :incorrect_attempts, :guessed_letters, :won

	def initialize(word, user)
		@word = word
		@user = user
		@incorrect_attempts = 0
		@guessed_letters = [""]
		@won = false
	end

	def display_hangman
		HangmanArt.hangman_array[@incorrect_attempts]
	end

	def guess_letter

		puts "Please guess a letter: "
		if @guessed_letters == [""]
			puts "You haven't guessed anything yet!"
			@guessed_letters = []
		else
			puts "These are the letters you've guessed: #{@guessed_letters}"
		end
		guess = gets.chomp.downcase
		if @guessed_letters.include?(guess)
			puts "You guessed that already!"
			puts ""
			sleep(1)
			guess_letter
		elsif guess =~ /[[:alpha:]]/ && guess.length == 1
			guess
		else
			puts "That is not a valid input, please try again!"
			puts ""
			sleep(1)
			guess_letter
		end
	end

	def evaluate_letter
		guess = guess_letter
		@guessed_letters << guess
		if !display_word.include?("_")
			@won = true
		elsif self.word.include?(guess)
			correct_guess
		else
			incorrect_guess
		end
	end

	def correct_guess
		system("clear")
		puts "Correct guess!"

		puts display_hangman
		puts display_word
		sleep(2)
	end

	def incorrect_guess
		system("clear")
		puts "Too bad."
		@incorrect_attempts += 1

		puts display_hangman
		puts display_word
		sleep(2)
	end

	def display_word
		@word.split(" ").map{ |w| w.gsub(/[^#{@guessed_letters}]/, "_ ")}.join("   ")
	end

	def guess_final_word_or_letter
		puts ""
		puts display_word
		puts ""
		puts "Choose to guess a word or letter."
		puts "Enter 'l' to guess a letter or enter 'w' to guess the final word and solve the puzzle."
		final_word_or_letter_choice = gets.chomp.downcase
		if final_word_or_letter_choice == "w"
			final_guess
		elsif final_word_or_letter_choice == 'l'
			evaluate_letter
		else
			puts "That is not a valid input, please try again!"
			puts ""
			sleep(1)
			guess_final_word_or_letter
		end
	end

	def final_guess
		puts "Please guess the word: "
		word_guess = gets.chomp
		if @word == word_guess
			@won = true
		else
			incorrect_guess
		end
	end



end