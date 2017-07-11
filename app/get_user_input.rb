
def welcome
    
    noose = []

    noose<<"               (/)"
    noose<<"               (/)"
    noose<<"               (/)"
    noose<<"               (/)"
    noose<<"               (/)"
    noose<<"               (/)"
    noose<<"               (/))"
    noose<<"              (/)(/)"
    noose<<"             (/)‘`(/)"
    noose<<"            (/)    (/)"
    noose<<"            (/)    (/)"
    noose<<"            (/)    (/)"
    noose<<"            (/)    (/)"
    noose<<"             (/)  (/)"
    noose<<"              (/)(/)"
    noose<<"               `''`"

    system("clear")




    noose.each do|n| 
        puts n
        sleep(0.15)
    end
    sleep(0.5)
    



     blink = true
    9.times do
        system("clear")
        if blink
    sparkle = "               (/)
               (/)
               (/)
               (/)   
               (/)       
         \\     (/)      /
          \\    (/))    /
              (/)(/)
             (/)'`(/)
            (/)    (/)
         -  (/)    (/)  -
            (/)    (/)
            (/)    (/)  
         /   (/)  (/)   \\
        /     (/)(/)     \\
               `''`
                 |"
          blink = false
        else 
    sparkle = "               (/)
               (/)
               (/)
               (/)   
               (/)       
               (/)      
          \\    (/))    /
              (/)(/)
             (/)'`(/)
            (/)    (/)
      ----  (/)    (/)  ----
            (/)    (/)
            (/)    (/)  
         /   (/)  (/)   \\
              (/)(/)      
               `''`
                 |
                 |"     
          blink = true
        end
    puts sparkle
    sleep(0.5)
    end




    sleep(0.5)
   

    # puts ""
    # blink = true
    # 4.times do
    # if blink
    #   message = "         Welcome to Hangman!   \r"
    #   blink = false
    #   sleep(0.5)
    # else 
    #   message = "                               \r"
    #   blink = true
    #   sleep(1)
    # end
    # print message
    # $stdout.flush
    # end

    puts nil

    puts "         Welcome to Hangman!"
    sleep(1)
    print "           Ready "
    sleep (0.8)
    print "to "
    sleep(0.8)
    puts "hang?"

    sleep(1)
    puts ""

    puts "Please enter a name"
    name = gets.chomp
    name
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
