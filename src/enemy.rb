require_relative("./player.rb")
require 'games_dice'

class Enemy < Player
    attr_reader :name
    def initialize(hp, dice, name)
        super(hp, dice)
        @name = name
    end
end

