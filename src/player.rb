require 'games_dice'

class Player 
    def initialize (hp, attack,name)
        @hp = hp
        @attack = attack
        @name = name
    end
    def attack
        dice = GamesDice.create @attack
        dice.roll
    end
    def stun
        puts "Stun"
        return true 
    end
    def run
        puts "run away!"
        return true
    end
end

hp = 90

player = Player.new(90, "1d6", "Leeroy")



puts player.attack
puts player.stun
puts player.run
