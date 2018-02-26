
require_relative("./players.rb")
require_relative("./turn.rb")

class Game

  def initialize()
    @player_one = Players.new("player1")
    @player_two = Players.new("player2")
    @turn = Turn.new(@player_one, @player_two)
  end

  def play_game_until
    until @player_one.lives < 1 || @player_two.lives < 1
      @turn.running_order
    end
    if @player_one.lives > 0
      puts "player1 wins with a score of #{@player_one.lives}/3"
    elsif @player_two.lives > 0
      puts "player2 wins with a score of #{@player_two.lives}/3"
    end
    puts "----Game Over----"
    puts "Good Bye!"
  end
end





