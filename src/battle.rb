
require "tty-prompt"
require 'games_dice'
require 'pastel'
require 'colorize'

pastel = Pastel.new

#menu for battle options
def battle_menu
    prompt = TTY::Prompt.new
    prompt.select("Which will you choose?") do |menu|
        menu.choice "Attack"
        menu.choice "Run!"
    end
end

#method for page breaks to make blocks of text look neat
def page_break
    puts ""
end

# Body of text for story
def opening_story

    puts "It was a warm summers day and Leeroy the sausage dog was sniffing the kitchen floor for pieces of food his hoomans might have dropped. He sauntered past the open kitchen door when suddenly movement in his peripherals made him stop in his tracks. His tail went into shark mode as his fur began to prickle, outside on his lawn he spotted a trespasser. A lizard, sunbaking in the grass! How dare it!"

    pastel = Pastel.new
    puts pastel.red("What is your archnemesis name?")
    name = gets.chomp.to_s.upcase
    page_break

    puts "Leeroy's eyes squint as he sizes up the lizard, he can just make out that the lizard is wearing a collar with the word #{name}. His eyes narrow as #{name} slowly turns to stare back at Leeroy, Leeroy lets out a warning growl as he takes a step forward. #{name} the lizard takes a challenging step forward, not wanting to give up his sunbaking spot."
end






#page_break
#battle_story
#page_break
#battle_menu

#opening_story

