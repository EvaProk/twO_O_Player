require "./questions"
require "./turn"

class Game 
  attr_accessor :is_over

  def initialize(p1, p2)
    @is_over = false
    @p1 = p1
    @p2 = p2
    @current_player = p1
    @other_player = p2
  end

  def switch_players
    temp = @current_player
    @current_player = @other_player
    @other_player = temp
  end

  def puts_winner
    puts "\n#{@other_player.name} has won with a score of #{@other_player.lives}/3!"
  end

  def puts_scores
    puts "\n#{@p1.name}: #{@p1.lives}/3 vs #{@p2.name}: #{@p2.lives}/3"
  end

  def play
    while !@is_over do
      question = Question.new
      turn = Turn.new(@current_player, question)
      @is_over = turn.launch
      if @is_over
        self.puts_winner
      else
        self.puts_scores
        self.switch_players
        puts "\n--- NEW TURN ---"
      end
    end
    puts "\n--- GAME OVER ---\n"
  end
end