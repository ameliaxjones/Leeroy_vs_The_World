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
        @hp -= dice.roll
    end

    def run
        puts "Leeroy hears his name being called and uses that as an excuse to run away."
        return true
    end

    def hp
        

    end

    
end


class Enemy < Player
    attr_reader :name
    def initialize(hp, dice, name)
        super(hp, dice)
        @name = name
    end
end


