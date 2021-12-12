#require_relative './battle'
require 'tty-prompt'
require 'tty-font'

# body of text for how to play game
def help_text
    pastel = Pastel.new
    font = TTY::Font.new(:doom)
    puts pastel.red(font.write("How To Play"))
    page_break
   puts" First choose what menu option you would like to use 
    - New Game: will start the game 
    - Help: will bring you to the Help page (which you are already in)
    - Exit: will close the app"
    page_break
    puts "When you chose New Game, it will give you a prompt, once you have completed that a battle menu shall appear.  
    - Attack: Will attack the enemy 
    - Run: Will bring you back to main menu"
    page_break
    puts "First player to lose all hp will lose."
end


