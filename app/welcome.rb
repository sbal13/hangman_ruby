
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
