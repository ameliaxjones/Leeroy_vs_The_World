#requiring classes and gems
require_relative './player'
require_relative './enemy'
require_relative './battle'
require_relative './dice'
require_relative './help'
require 'tty-prompt'
require 'games_dice'
require 'tty-font'
font = TTY::Font.new(:doom)
pastel = Pastel.new


#menu
def main_menu
    prompt = TTY::Prompt.new
    prompt.select("Main Menu") do |menu|
        menu.choice "New Game!"
        menu.choice "Help"
        menu.choice "Exit"
    end
end

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


#Title
puts pastel.red(font.write("Leeroy    vs   The   World!"))

main_menu
page_break

#Loop for the main menu
answer = ""
while answer != "Exit"
    answer = main_menu
    system "clear"
    case answer
    when "New game!"
    when "Help"
        help = help_text
    else
        puts "GoodBye! ૮ ˆﻌˆ ა "
        next
    end 
    system "clear"
end