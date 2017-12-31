
my_dice = 0
my_wins = 0

your_dice = 0
your_wins = 0

while my_wins < 2 && your_wins < 2 do

my_dice += rand(6)+1
my_dice += rand(6)+1
your_dice += rand(6)+1
your_dice += rand(6)+1

  if my_dice > your_dice then
    my_wins += 1
    puts "my wins: #{my_wins}"
  elsif my_dice < your_dice
    your_wins += 1
    puts "your wins: #{your_wins}"
  else
    my_wins += 0
    your_wins += 0
  end
end

if my_wins == 2 then
  print "I won"
elsif your_wins == 2 then
  print "You won"
end

#Write the dice game as above.
#Upgrade the dice game: now both I and my opponent roll two six-sided dice each.
#Upgrade the game once more: now we play several rounds for each game. The first player to win two rounds wins the game. (Still with two dice each.)
