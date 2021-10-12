class Turn
  @@TURN = 1

  def initialize(player, question)
    @current_player = player
    @question = question
    @@TURN += 1
  end
  
  def launch
    puts "-> #{@current_player.name}, it's your turn :"
    @question.question_player
    if !@question.verify_answer
      @current_player.lose_life
    end
    @current_player.dead?
  end
end