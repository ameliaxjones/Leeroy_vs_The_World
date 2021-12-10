require_relative("./player.rb")

class Enemy < Player
    def initialize(name, hp, attack)
        super(attack)
        super(hp)
        @name = name
    end
end

hp = 100