
require "tty-prompt"
require 'games_dice'
require 'pastel'
pastel = Pastel.new


def battle_menu
    prompt = TTY::Prompt.new
    prompt.select("Which will you choose?") do |menu|
        menu.choice "Attack"
        menu.choice "Run!"
    end
end

def page_break
    puts ""
end



def battle_story
    puts "Leeroy’s eyes squint as he sizes up the lizard, he can just make out that the lizard is wearing a collar with the word name. His eyes narrow as name slowly turns to stare back at Leeroy, Leeroy lets out a warning growl as he takes a step forward. Name the lizard takes a challenging step forward, not wanting to give up his sunbaking spot."
end

#page_break
#battle_story
#page_break
#battle_menu

