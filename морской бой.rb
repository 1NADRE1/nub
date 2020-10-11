def play_battleship

board = Array.new(10) { Array.new(10, "O") }

def print_board(board)
board.each do |r|
puts r.map { |p| p }.join(" ")
end
end


puts "Давай сыграем в морской бой:)\n-----\n10 попыток)\n-----"
print_board(board)
def random_row(board)
return rand(10)
end

def random_col(board)
return rand(10)
end

ship_row = random_row(board)
ship_col = random_col(board)
#puts ship_row ##debugging purposes
#puts ship_col ## ^^^^


for turn in 1..10
puts "Попытка: #{turn}"
puts "Выбери строчку (0-9): "
guess_row = gets.chomp.to_i
puts "Выбери столбец (0-9): "
guess_col = gets.chomp.to_i
if turn == 10
puts "------\nGame Over)\nКоординаты кораблика:#{ship_row},#{ship_col}"
break
elsif (guess_row == ship_row) && (guess_col == ship_col)
puts "Уря! Ты потопил мой кораблик!"
break
else
if ((guess_row < 0) || (guess_row > 9)) || ((guess_col < 0) || (guess_col > 9))
puts "Вай, куда-то не туда."
elsif(board[guess_row][guess_col] == "X")
puts "Уже было."
else
puts "Ты упустил мой кораблик!"
board[guess_row][guess_col] = "X"
#if turn == 10
# puts "Game Over\nThe Battleship coordinates were:#{ship_row},#{ship_col}"
# break
#end
end
end
print_board(board)
end
end
play_battleship
