require_relative './battle'
require 'games_dice'

class Player 
    attr_reader :hp
    def initialize (hp,dice)
        @hp = hp
        @dice = dice
    end

    def attack
        dice = GamesDice.create @dice
        return dice.roll
    end

    def take_damage(i)
        @hp -= i
    end
    
end


class Enemy < Player
    attr_reader :name
    def initialize(hp, dice, name)
        super(hp, dice)
        @name = name
    end
end


