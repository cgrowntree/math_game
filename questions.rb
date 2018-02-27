class Questions

  def question(player)

    number_1 = 1 + rand(20)
    number_2 = 1 + rand(20)
    sum = number_1 + number_2

    print "#{player.name}: "
    puts "What does #{number_1} plus #{number_2} equal?"
    print "> "
    answer = gets.chomp

    if answer.to_i === sum
      puts "\nYES! You are correct.\n"
    else
      puts "\nSeriousy? No!\n"
      player.lives -= 1
    end
  end
end