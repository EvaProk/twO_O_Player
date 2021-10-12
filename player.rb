class Player
  @@ID = 1
  attr_reader :lives, :name

  def initialize 
    @name = "Player #{@@ID}"
    @@ID += 1
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def dead?
    self.lives <= 0
  end
end

