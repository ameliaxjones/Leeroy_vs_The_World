require_relative '../player'
require_relative '../enemy'
require_relative '../battle'

RSpec.describe Player, "Testing attack" do
    it "player dealing damage " do 
        player = Player.new(100, "1d8")
        player.attack
        expect(player.hp).to be < 100 
    end
end

RSpec.describe Enemy, "Testing attack" do
    it "enemy dealing damage " do 
        enemy = Enemy.new(100, "1d8", "Name")
        enemy.attack
        expect(enemy.hp).to be < 100 
    end
end