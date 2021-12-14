
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
    return name 
end

#text if player hp is 0
def fail_story
    name = opening_story
    puts "Leeroy all bruised up from the beating he had from #{name}  limps back into the safety of his home vowing next time he saw him he would get his revenge. "

end

#text is enemy hp is 0
def Victory story
    name = opening_story
    puts "Leeroy barked victoriously as #{name} the lizard scuttled away from the fight. That will teach him to come onto his turf!"
    
end

#text for when enemy attacks
def enemy_attack
    name = opening_story
    Puts " #{name}" has attacked you
end


