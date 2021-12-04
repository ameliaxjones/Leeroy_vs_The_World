require_relative("./leeroy.rb")

class Enemy < Leeroy
    def initialize(name, hp, attack)
        super(attack)
        super(hp)
        @name = name
    end
end

hp = 100