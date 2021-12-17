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
page_break
puts pastel.red(font.write("Leeroy    vs   The   World!"))
page_break


#Loop for the main menu, battle menu, attack, and run.
answer = ""
while answer != "Exit"
    answer = main_menu
    system "clear"
    case answer
    when "New Game!"
        player = Player.new(30, "1d10") #created player class with their HP and Attack dice used
        name = opening_story
        #this has been tested in player_spec.rb
        enemy = Enemy.new(30, "1d8", name) #created enemy class with its hp and attack dice used
        battle = ""
        special = ""
        while battle != "Run!"
            battle = battle_menu
            case battle
            when "Attack"
                damage = player.attack 
                enemy.take_damage(damage)
                if enemy.hp > 0
                    puts "#{enemy.name.upcase} has taken #{damage} damage they have #{enemy.hp} hp left"
                else
                     victory_story(enemy.name)
                     press_continue
                     battle = "Run!"
                end
                damage = enemy.attack
                player.take_damage(damage)
                if player.hp > 0
                    page_break
                    sleep(1)
                    puts "You take #{damage} damage, you now have #{player.hp} hp left"
                else
                    fail_story(enemy.name)
                    press_continue
                    battle = "Run!"
                end
            when "Special Attack!!"
                damage = player.special_attack 
                enemy.take_damage(damage)
                if special == "selected"
                    page_break
                    puts "You have already used your special, select another option".upcase
                elsif enemy.hp > 0 && special != "selected"
                    page_break
                    puts "#{enemy.name} has taken #{damage} special damage they have #{enemy.hp} hp left"
                    puts "#{enemy.name} is now stunned"
                    special = "selected"
                else
                     victory_story(enemy.name)
                     press_continue
                     battle = "Run!"
                end
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


