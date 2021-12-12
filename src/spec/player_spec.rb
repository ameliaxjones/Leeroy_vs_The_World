require_relative '../player'
require_relative '../battle'

RSpec.describe Player, "Testing attack" do
    it "player dealing damage " do 
        player = Player.new(100, "1d8")
        expect(player.attack).to be <= 8
    end
end

RSpec.describe Enemy, "Enemy has hp" do
    it "enemy has hp " do 
        enemy = Enemy.new(100, "1d8", "Name")
        expect(enemy.hp).to eq 100 
    end
end

RSpec.describe Enemy, "Testing dice" do
    it "is the dice giving an outcome" do 
        enemy = Enemy.new(100, "1d8", "Name")
        enemy.attack
        expect(enemy.hp).to be < 100 
    end
end