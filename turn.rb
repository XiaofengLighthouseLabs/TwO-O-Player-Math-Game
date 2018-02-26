
require_relative("./players.rb")

class Turn

  def initialize(player1, player2)
    @person1 = player1
    @person2 = player2
    @current_player = @person1
  end

  def start_game
    @num_one = rand(1..20)
    @num_two = rand(1..20)
    @sum = @num_one + @num_two
    puts "#{@current_player.name}: What does #{@num_one} plus #{@num_two} equal?"
  end

  def respond
    input = gets.chomp.to_i
    if input == @sum
      puts "#{@current_player.name}: Yes! You are correct."
      puts "player1: #{@person1.lives}/3 vs player2: #{@person2.lives}/3 "
      @current_player = @current_player == @person2? @person1 : @person2
    else
      puts "#{@current_player.name}: Seriously? No!"
      @current_player = @current_player == @person2? @person1 : @person2
      @current_player.lives = @current_player.lives - 1
      puts "player1: #{@person1.lives}/3 vs player2: #{@person2.lives}/3 "
    end
  end

  def switch_game
    if @person1.lives > 0 && @person2.lives > 0
      puts "----New Turn----"
    end
  end

  def running_order
    start_game
    respond
    switch_game
  end

end

