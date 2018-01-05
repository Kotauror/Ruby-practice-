while true do
  puts "Please enter a command"
  input = gets.chomp
  if input == "look" then
    puts "You are standing in an hall with a marble floor. You see a door."
  elsif input == "quit"
    puts "Bye!"
    break
  elsif input == "north" then
    while true do
      puts "Please enter a command"
      input = gets.chomp
      if input == "look" then
        puts "You are in a warm and cosy study. You see a safe. You see a desk."
      elsif input == "quit"
        puts "Bye!"
        break
      elsif input == "look at desk" then
        puts "You see a piece of paper that reads, The combination is 2451."
      elsif input == "enter combination 2451" then
        puts "You see some diamonds in the safe, pick them up and make your
        escape"
        break
      elsif input == "south" then
        break
      end
    end
  end
end
