def play

  board = Array.new(2) { Array.new(2, "O") }
  def print_board(board)
    board.each do |r|
      puts r.map { |p| p }.join(" ")
    end
  end
puts "
●▬▬▬▬●ДОБРО ПОЖАЛОВАТЬ●▬▬▬▬▬●
"	

  puts "Давайте играть в Найди вора!\n-----\nУ вас есть 3 попытки!\n-----"
  print_board(board)
  def random_row(board)puts 
      return rand(2)  
  end
  def random_col(board)
      return rand(2)  
  end

  ship_row = random_row(board)
  ship_col = random_col(board)
  #ставит ship_row ##цели отладки
  #ставит ship_col ## ^^^^

  for turn in 1..3
    puts "Попытка: #{turn}"
    puts "Координата Y (0-1): "
    guess_row = gets.chomp.to_i  
    puts "Координата X (0-1): "
    guess_col = gets.chomp.to_i
    if turn == 3
        puts "------\nИгра окончена!\nКоординаты вора были:#{ship_row},#{ship_col}"
        break
    elsif (guess_row == ship_row) && (guess_col == ship_col)
        puts "Поздравляю! Вы нашли вора)"
        break
    else
        if ((guess_row < 0) || (guess_row >= 3)) || ((guess_col < 0) || (guess_col >= 3))
            puts "Не туда)"
        elsif(board[guess_row][guess_col] == "X")
            puts "Долго мне ждать?"
        else
            puts "GG друг"
            board[guess_row][guess_col] = "X"
                
        end
    end
    print_board(board)
  end
end
play

