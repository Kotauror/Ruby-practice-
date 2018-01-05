river = "-----,--C--,CC-CC,CC-CC"
river = river.split(',')
river[0][2] = "P"
current_first_ind = 0
current_second_ind = 2
d = river.length
number_of_rounds = 0

while number_of_rounds < d - 1 do
  puts river # last river memorized - last known position of P
  puts "Type left, right or neither"
  direction = gets.chomp
  river[current_first_ind][current_second_ind] = "-" # restart the river to init :)
  # to make a blank space for setting new P
  if direction == "left" then
    current_first_ind += 1
    current_second_ind -= 1
    if river[current_first_ind][current_second_ind] == "C" then
      puts "You were eaten"
      break
    else
      river[current_first_ind][current_second_ind] = "P"
    end
  elsif direction == "right" then
    current_first_ind += 1
    current_second_ind += 1
    if river[current_first_ind][current_second_ind] == "C" then
      puts "You were eaten"
      break
    else
      river[current_first_ind][current_second_ind] = "P"
    end
  elsif direction == "neither" then
    current_first_ind += 1
    if river[current_first_ind][current_second_ind] == "C" then
      puts "You were eaten"
      break
    else
      river[current_first_ind][current_second_ind] = "P"
    end
  end
  number_of_rounds += 1
end

# Last move - whatever you type - you're freeeee

puts river
puts "Type left, right or neither"
direction = gets.chomp
if direction == "left" || direction == "right" || direction == "neither" then
  puts "You survived"
end
