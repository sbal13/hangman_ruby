

class RandomWords

	WORDS = %w(trains
		nauseating
		berry
		recess
		reproduce
		appliance
		sack
		crooked
		flap
		tough
		bead
		wing
		smoke
		paint
		steep
		cold
		soup
		purring
		yard
		twig
		plate
		true
		thoughtful
		night
		zippy
		trail
		chop
		married
		ancient
		proud
		teeny-tiny
		incredible
		healthy
		cats
		sparkling
		nimble
		farm
		flower
		carve
		plain
		equable
		rotten
		pet
		death
		confuse
		lowly
		pushy
		alive
		kindhearted
		cautious
		five
		knowing
		rabid
		follow
		receipt
		melted
		instruct
		drink
		example
		bright
		distinct
		instinctive
		divergent
		look
		houses
		scold
		tasteful
		ajar
		week
		male
		separate
		actor
		match
		unsightly
		learned
		need
		donkey
		beg
		sleepy
		nifty
		mark
		suspend
		pump
		knife
		calendar
		bath
		work
		wren
		stomach
		wrathful
		wry
		round
		cover
		bashful
		stove
		pick
		eager
		nest
		white
		fat)

	PHRASES = ["Two wrongs do not make a right", 
		"The pen is mightier than the sword",
		"When in Rome do as the Romans do",
		"The squeaky wheel gets the grease",
		"When the going gets though the tough get going",
		"No man is an island",
		"Fortune favors the bold",
		"Better late than never",
		"Birds of a feather flock together",
		"A picture is worth a thousand words",
		"There is no such thing as a free lunch",
		"There is no place like home",
		"Discretion is the greater part of valor",
		"The early bird catches the worm"]
	

	def self.word_or_phrase?(difficulty_choice)
		if difficulty_choice == 's'
			self.generate_word
		else difficulty_choice == 'p'
			self.generate_phrase
		end
	end


	def self.generate_word
		WORDS.sample
	end


	def self.generate_phrase
		PHRASES.sample
	end



end