require "tty-prompt"
require 'games_dice'

def battle_menu
    prompt = TTY::Prompt.new
    prompt.select("Main Menu") do |menu|
        menu.choice "Attack"
        menu.choice "Stun"
        menu.choice "Run!"
    end
end

battle_menu