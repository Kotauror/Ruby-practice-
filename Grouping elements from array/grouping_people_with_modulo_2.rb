puts "Enter a number of groups"
number_of_groups = gets.chomp.to_i
arr_of_names = []
for i in 0..number_of_groups-1 do
  arr_of_names.push([])
end

counter = 0
while true do
  puts "Enter a name"
  name = gets.chomp
  if name == "stop" then
    break
  end
  arr_of_names[counter % number_of_groups].push(name)
  counter += 1
end

while true do
  puts "From which group do you want to print the names?"
  choice = gets.chomp.to_i
  if choice == "stop" then
    break
  end
  choice -= 1
  puts arr_of_names[choice]
end
