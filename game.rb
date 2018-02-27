class Game

  puts "\nWelcome to Ruby CLI Math Game!\n"
  puts 'Exciting eh?'
  puts "Let's get started"
  puts ""

  def initialize
    @player1 = Players.new("Player 1")
    @player2 = Players.new("Player 2")
    new_game
  end

  def new_game
    turn = Questions.new
    while @player1.lives > 0 && @player2.lives > 0
      turn.question(@player1)
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      puts "\n-------- NEW TURN --------\n"
      if @player1.lives > 0
      turn.question(@player2)
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      puts "\n-------- NEW TURN --------\n"
      end
    end

    if @player1.lives === 0
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
      puts "\n-------- GAME OVER --------\n"
      puts "Good bye!"
    else
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
      puts "\n-------- GAME OVER --------\n"
      puts "Good bye!"
    end
  end
end