puts "Welcome to the Dice Game - the bigger number wins!"
puts "Roll your dice three times"
puts "*** Click enter to roll ***"

gets

player1_counter = 0
player2_counter = 0

rounds_counter = 1

while rounds_counter <= 3 do
  player1_counter += rand(6)+1 #random number from 0 to 5, we add +1 cause we cant to start counting from 1
  player2_counter += rand(6)+1
  rounds_counter += 1
  puts "Player 1 has #{player1_counter} points"
  puts "Player 2 has #{player2_counter} points"
  if player1_counter > player2_counter then
    puts "Player 1 is winning"
  elsif player1_counter < player2_counter then
    puts "Player 2 is winning"
  else
    puts "Everybody is losing. Life is a miserable lie."
  end
  gets #requires player to click enter
end

if player1_counter > player2_counter then
  puts "Player 1 won"
elsif player1_counter < player2_counter then
  puts "Player 2 won"
else
  puts "We have a draw"
end
