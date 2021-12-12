#requiring classes and gems
require_relative './player'
require_relative './battle'
require_relative './help'
require 'io/console'  
require 'tty-prompt'
require 'games_dice'
require 'tty-font'
font = TTY::Font.new(:doom)
pastel = Pastel.new


#menu for main title 
def main_menu
    prompt = TTY::Prompt.new
    prompt.select("Main Menu") do |menu|
        menu.choice "New Game!"
        menu.choice "Help"
        menu.choice "Exit"
    end
end

                                                                                                     
def press_continue                                                                                                              
  print "Select any key to continue ..."                                                                                                    
  STDIN.getch   #recomended from stack overflow instead of using gets                                                                                                                                                                                                      
end                                                                                                                        


#Title
puts pastel.red(font.write("Leeroy    vs   The   World!"))


#Loop for the main menu 
answer = ""
while answer != "Exit"
    answer = main_menu
    system "clear"
    case answer
    when "New Game!"
        opening_story
        battle_menu
    when "Help"
        help_text
        press_continue
    else
        puts "GoodBye! ૮ ˆﻌˆ ა "
        page_break
        next
    end 
    system "clear"
end


