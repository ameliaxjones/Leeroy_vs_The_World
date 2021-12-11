require 'games_dice'

class Player 
    attr_reader :hp
    def initialize (hp,dice)
        @hp = hp
        @dice = dice

    end
    def attack
        dice = GamesDice.create @dice
        @hp -= dice.roll
    end
    def run
        puts "run away!"
        return true
    end
end

#player = Player.new(50, "1d8")

