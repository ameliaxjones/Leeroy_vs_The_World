#requiring classes and gems
require_relative './player'
require_relative './enemy'
require_relative './battle'
require_relative './dice'
require 'tty-prompt'
require 'games_dice'
require 'tty-font'
font = TTY::Font.new(:doom)
pastel = Pastel.new


#menu
def main_menu
    prompt = TTY::Prompt.new
    prompt.select("Main Menu") do |menu|
        menu.choice "New Game"
        menu.choice "Help"
        menu.choice "Exit"
    end
end


#Title
puts pastel.red(font.write("Leeroy    vs   The   World!"))

page_break
main_menu

#Loop for the menu
while answer != "Exit"
    answer = select_option
    system "clear"
    case answer
    when "New game!"
        mode = game_mode
        battle_story(battle)
    when "Help"
        training
    else
        puts "See you next time"
        next
    end 
    system "clear"
end