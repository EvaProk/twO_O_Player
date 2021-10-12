require "./game"
require "./player"
require "./questions"
require "./turn"

p1 = Player.new
p2 = Player.new

game = Game.new(p1, p2)
game.play