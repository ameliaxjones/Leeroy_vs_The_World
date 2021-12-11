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


