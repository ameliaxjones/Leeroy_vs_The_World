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
        player = Player.new(50, "1d10") #created player class with their HP and Attack dice used
        name = opening_story
        enemy = Enemy.new(60, "1d8", name) #created enemy class with its hp and attack dice used
        battle = ""
        while battle != "Run!"
            battle = battle_menu
            case battle
            when "Attack"
                puts "Attack"
            when "Run!"
                puts "Leeroy hears his name being called and uses that as an excuse to run away. "
                page_break
                press_continue
                next
            end
        end
    when "Help"
        help_text
        press_continue
    else
        page_break
        puts "GoodBye! ૮ ˆﻌˆ ა "
        page_break
        next
    end 
    system "clear"
end


